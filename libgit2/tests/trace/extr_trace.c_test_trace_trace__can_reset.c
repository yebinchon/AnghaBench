
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GIT_TRACE_ERROR ;
 scalar_t__ GIT_TRACE_INFO ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int cl_skip () ;
 int git_trace (scalar_t__,char*,char*) ;
 scalar_t__ git_trace_level () ;
 int git_trace_set (scalar_t__,int ) ;
 int trace_callback ;
 int written ;

void test_trace_trace__can_reset(void)
{
 cl_skip();

}
