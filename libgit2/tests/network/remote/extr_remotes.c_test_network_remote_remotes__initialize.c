
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _refspec ;
 int _remote ;
 int _repo ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int * git_remote_get_refspec (int ,int ) ;
 int git_remote_lookup (int *,int ,char*) ;

void test_network_remote_remotes__initialize(void)
{
 _repo = cl_git_sandbox_init("testrepo.git");

 cl_git_pass(git_remote_lookup(&_remote, _repo, "test"));

 _refspec = git_remote_get_refspec(_remote, 0);
 cl_assert(_refspec != ((void*)0));
}
