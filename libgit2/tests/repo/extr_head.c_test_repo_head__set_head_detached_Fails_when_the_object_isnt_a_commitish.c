
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_object ;


 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int git_repository_set_head_detached (int ,int ) ;
 int git_revparse_single (int **,int ,char*) ;
 int repo ;

void test_repo_head__set_head_detached_Fails_when_the_object_isnt_a_commitish(void)
{
 git_object *blob;

 cl_git_pass(git_revparse_single(&blob, repo, "point_to_blob"));

 cl_git_fail(git_repository_set_head_detached(repo, git_object_id(blob)));

 git_object_free(blob);
}
