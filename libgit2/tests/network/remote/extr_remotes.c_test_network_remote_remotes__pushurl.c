
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_remote ;


 int _remote ;
 int _repo ;
 int cl_assert (int ) ;
 int cl_assert_equal_s (int *,char*) ;
 int cl_git_pass (int ) ;
 int git_remote_free (int *) ;
 int git_remote_lookup (int **,int ,char const*) ;
 char* git_remote_name (int ) ;
 int * git_remote_pushurl (int *) ;
 int git_remote_set_pushurl (int ,char const*,char*) ;

void test_network_remote_remotes__pushurl(void)
{
 const char *name = git_remote_name(_remote);
 git_remote *mod;

 cl_git_pass(git_remote_set_pushurl(_repo, name, "git://github.com/libgit2/notlibgit2"));
 cl_git_pass(git_remote_lookup(&mod, _repo, name));
 cl_assert_equal_s(git_remote_pushurl(mod), "git://github.com/libgit2/notlibgit2");
 git_remote_free(mod);

 cl_git_pass(git_remote_set_pushurl(_repo, name, ((void*)0)));
 cl_git_pass(git_remote_lookup(&mod, _repo, name));
 cl_assert(git_remote_pushurl(mod) == ((void*)0));
 git_remote_free(mod);
}
