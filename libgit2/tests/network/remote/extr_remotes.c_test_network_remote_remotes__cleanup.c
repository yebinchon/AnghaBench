
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _remote ;
 int cl_git_sandbox_cleanup () ;
 int git_remote_free (int *) ;

void test_network_remote_remotes__cleanup(void)
{
 git_remote_free(_remote);
 _remote = ((void*)0);

 cl_git_sandbox_cleanup();
}
