
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_state {int dummy; } ;


 scalar_t__ is_last_aligned_frame (struct unwind_state*) ;
 scalar_t__ is_last_frame (struct unwind_state*) ;
 scalar_t__ is_last_ftrace_frame (struct unwind_state*) ;

__attribute__((used)) static bool is_last_task_frame(struct unwind_state *state)
{
 return is_last_frame(state) || is_last_aligned_frame(state) ||
        is_last_ftrace_frame(state);
}
