
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_object ;


 int GIT_OBJECT_TAG ;
 int assert_head_is_correctly_detached () ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int git_object_type (int *) ;
 int git_repository_set_head_detached (int ,int ) ;
 int git_revparse_single (int **,int ,char*) ;
 int repo ;

void test_repo_head__set_head_detached_Detaches_HEAD_and_make_it_point_to_the_peeled_commit(void)
{
 git_object *tag;

 cl_git_pass(git_revparse_single(&tag, repo, "tags/test"));
 cl_assert_equal_i(GIT_OBJECT_TAG, git_object_type(tag));

 cl_git_pass(git_repository_set_head_detached(repo, git_object_id(tag)));

 assert_head_is_correctly_detached();

 git_object_free(tag);
}
