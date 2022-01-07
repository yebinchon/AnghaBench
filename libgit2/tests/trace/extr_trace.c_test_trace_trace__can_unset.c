
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_TRACE_FATAL ;
 scalar_t__ GIT_TRACE_INFO ;
 scalar_t__ GIT_TRACE_NONE ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int cl_skip () ;
 int git_trace (int ,char*,char*) ;
 scalar_t__ git_trace_level () ;
 int git_trace_set (scalar_t__,int *) ;
 scalar_t__ written ;

void test_trace_trace__can_unset(void)
{
 cl_skip();

}
