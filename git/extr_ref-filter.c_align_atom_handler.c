
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct ref_formatting_state {struct ref_formatting_stack* stack; } ;
struct ref_formatting_stack {int * at_end_data; int at_end; } ;
struct atom_value {TYPE_2__* atom; } ;
struct TYPE_3__ {int align; } ;
struct TYPE_4__ {TYPE_1__ u; } ;


 int end_align_handler ;
 int push_stack_element (struct ref_formatting_stack**) ;

__attribute__((used)) static int align_atom_handler(struct atom_value *atomv, struct ref_formatting_state *state,
         struct strbuf *unused_err)
{
 struct ref_formatting_stack *new_stack;

 push_stack_element(&state->stack);
 new_stack = state->stack;
 new_stack->at_end = end_align_handler;
 new_stack->at_end_data = &atomv->atom->u.align;
 return 0;
}
