
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_state {scalar_t__ bp; } ;


 scalar_t__ last_frame (struct unwind_state*) ;

__attribute__((used)) static bool is_last_frame(struct unwind_state *state)
{
 return state->bp == last_frame(state);
}
