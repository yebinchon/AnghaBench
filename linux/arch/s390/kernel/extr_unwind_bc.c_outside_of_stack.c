
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int end; } ;
struct unwind_state {unsigned long sp; TYPE_1__ stack_info; } ;
struct stack_frame {int dummy; } ;



__attribute__((used)) static bool outside_of_stack(struct unwind_state *state, unsigned long sp)
{
 return (sp <= state->sp) ||
  (sp > state->stack_info.end - sizeof(struct stack_frame));
}
