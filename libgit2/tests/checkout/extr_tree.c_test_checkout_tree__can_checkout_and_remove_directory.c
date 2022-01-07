
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int * g_object ;
 int g_opts ;
 int g_repo ;
 int git_checkout_tree (int ,int *,int *) ;
 int git_object_free (int *) ;
 int git_path_isdir (char*) ;
 int git_path_isfile (char*) ;
 int git_repository_set_head (int ,char*) ;
 int git_revparse_single (int **,int ,char*) ;

void test_checkout_tree__can_checkout_and_remove_directory(void)
{
 cl_assert_equal_i(0, git_path_isdir("./testrepo/ab/"));




 cl_git_pass(git_revparse_single(&g_object, g_repo, "subtrees"));
 cl_git_pass(git_checkout_tree(g_repo, g_object, &g_opts));

 cl_git_pass(git_repository_set_head(g_repo, "refs/heads/subtrees"));

 cl_assert_equal_i(1, git_path_isdir("./testrepo/ab/"));
 cl_assert_equal_i(1, git_path_isfile("./testrepo/ab/de/2.txt"));
 cl_assert_equal_i(1, git_path_isfile("./testrepo/ab/de/fgh/1.txt"));

 git_object_free(g_object);
 g_object = ((void*)0);




 cl_git_pass(git_revparse_single(&g_object, g_repo, "master"));
 cl_git_pass(git_checkout_tree(g_repo, g_object, &g_opts));

 cl_git_pass(git_repository_set_head(g_repo, "refs/heads/master"));


 cl_assert_equal_i(0, git_path_isdir("./testrepo/ab/"));
}
