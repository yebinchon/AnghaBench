
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_RMDIR_REMOVE_FILES ;
 int cl_git_sandbox_cleanup () ;
 int * g_object ;
 int git_futils_rmdir_r (char*,int *,int ) ;
 int git_object_free (int *) ;
 scalar_t__ git_path_isdir (char*) ;

void test_checkout_tree__cleanup(void)
{
 git_object_free(g_object);
 g_object = ((void*)0);

 cl_git_sandbox_cleanup();

 if (git_path_isdir("alternative"))
  git_futils_rmdir_r("alternative", ((void*)0), GIT_RMDIR_REMOVE_FILES);
}
