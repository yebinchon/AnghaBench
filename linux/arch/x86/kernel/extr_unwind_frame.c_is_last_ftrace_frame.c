
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_state {unsigned long* bp; } ;


 unsigned long* last_frame (struct unwind_state*) ;

__attribute__((used)) static bool is_last_ftrace_frame(struct unwind_state *state)
{
 unsigned long *last_bp = last_frame(state);
 unsigned long *last_ftrace_bp = last_bp - 3;
 return (state->bp == last_ftrace_bp &&
  *state->bp == *(state->bp + 2) &&
  *(state->bp + 1) == *(state->bp + 4));
}
