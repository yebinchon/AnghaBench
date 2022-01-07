
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index ;


 int GIT_STASH_DEFAULT ;
 int GIT_STATUS_INDEX_DELETED ;
 int GIT_STATUS_WT_NEW ;
 int assert_blob_oid (char*,char*) ;
 int assert_status (int ,char*,int) ;
 int cl_git_pass (int ) ;
 int git_index_free (int *) ;
 int git_index_remove_bypath (int *,char*) ;
 int git_index_write (int *) ;
 int git_repository_index (int **,int ) ;
 int git_stash_save (int *,int ,int ,int *,int ) ;
 int repo ;
 int signature ;
 int stash_tip_oid ;

void test_stash_save__deleted_in_index_modified_in_workdir(void)
{
 git_index *index;

 git_repository_index(&index, repo);

 cl_git_pass(git_index_remove_bypath(index, "who"));
 cl_git_pass(git_index_write(index));

 assert_status(repo, "who", GIT_STATUS_WT_NEW | GIT_STATUS_INDEX_DELETED);

 cl_git_pass(git_stash_save(&stash_tip_oid, repo, signature, ((void*)0), GIT_STASH_DEFAULT));

 assert_blob_oid("stash@{0}^0:who", "a0400d4954659306a976567af43125a0b1aa8595");
 assert_blob_oid("stash@{0}^2:who", ((void*)0));

 git_index_free(index);
}
