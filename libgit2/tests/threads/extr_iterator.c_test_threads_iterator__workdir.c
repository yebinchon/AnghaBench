
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _repo ;
 int cl_git_sandbox_init (char*) ;
 int run_in_parallel (int,int,int ,int *,int *) ;
 int run_workdir_iterator ;

void test_threads_iterator__workdir(void)
{
 _repo = cl_git_sandbox_init("status");

 run_in_parallel(
  1, 20, run_workdir_iterator, ((void*)0), ((void*)0));
}
