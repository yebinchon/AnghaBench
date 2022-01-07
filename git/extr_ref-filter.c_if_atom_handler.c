
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct ref_formatting_state {struct ref_formatting_stack* stack; } ;
struct ref_formatting_stack {struct if_then_else* at_end_data; int at_end; } ;
struct if_then_else {int cmp_status; int str; } ;
struct atom_value {TYPE_2__* atom; } ;
struct TYPE_4__ {int cmp_status; int str; } ;
struct TYPE_6__ {TYPE_1__ if_then_else; } ;
struct TYPE_5__ {TYPE_3__ u; } ;


 int if_then_else_handler ;
 int push_stack_element (struct ref_formatting_stack**) ;
 struct if_then_else* xcalloc (int,int) ;

__attribute__((used)) static int if_atom_handler(struct atom_value *atomv, struct ref_formatting_state *state,
      struct strbuf *unused_err)
{
 struct ref_formatting_stack *new_stack;
 struct if_then_else *if_then_else = xcalloc(sizeof(struct if_then_else), 1);

 if_then_else->str = atomv->atom->u.if_then_else.str;
 if_then_else->cmp_status = atomv->atom->u.if_then_else.cmp_status;

 push_stack_element(&state->stack);
 new_stack = state->stack;
 new_stack->at_end = if_then_else_handler;
 new_stack->at_end_data = if_then_else;
 return 0;
}
