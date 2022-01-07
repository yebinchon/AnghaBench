
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_object ;


 int GIT_REFS_STASH_FILE ;
 int cl_assert_equal_oid (int *,int ) ;
 int cl_git_pass (int ) ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int git_reference_name_to_id (int *,int ,int ) ;
 int git_revparse_single (int **,int ,char*) ;
 int repo ;

void retrieve_top_stash_id(git_oid *out)
{
 git_object *top_stash;

 cl_git_pass(git_revparse_single(&top_stash, repo, "stash@{0}"));
 cl_git_pass(git_reference_name_to_id(out, repo, GIT_REFS_STASH_FILE));

 cl_assert_equal_oid(out, git_object_id(top_stash));

 git_object_free(top_stash);
}
