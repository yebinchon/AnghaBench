
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_TRACE_NONE ;
 int cl_global_trace_register () ;
 int git_trace_set (int ,int *) ;

void test_trace_trace__cleanup(void)
{
 git_trace_set(GIT_TRACE_NONE, ((void*)0));


 cl_global_trace_register();
}
