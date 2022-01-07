
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_TRACE_INFO ;
 int cl_global_trace_disable () ;
 int git_trace_set (int ,int ) ;
 int trace_callback ;
 scalar_t__ written ;

void test_trace_trace__initialize(void)
{

 cl_global_trace_disable();

 git_trace_set(GIT_TRACE_INFO, trace_callback);
 written = 0;
}
