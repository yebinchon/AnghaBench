
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ git_trace_level_t ;
typedef int * git_trace_cb ;
struct TYPE_2__ {int * callback; scalar_t__ level; } ;


 int GIT_ERROR_INVALID ;
 int GIT_MEMORY_BARRIER ;
 int GIT_UNUSED (scalar_t__) ;
 int assert (int) ;
 int git_error_set (int ,char*) ;
 TYPE_1__ git_trace__data ;

int git_trace_set(git_trace_level_t level, git_trace_cb callback)
{
 GIT_UNUSED(level);
 GIT_UNUSED(callback);

 git_error_set(GIT_ERROR_INVALID,
  "this version of libgit2 was not built with tracing.");
 return -1;

}
