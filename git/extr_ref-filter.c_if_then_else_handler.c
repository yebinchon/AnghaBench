
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_formatting_stack {int output; scalar_t__ at_end_data; struct ref_formatting_stack* prev; } ;
struct if_then_else {scalar_t__ condition_satisfied; scalar_t__ else_atom_seen; int then_atom_seen; } ;


 int _ (char*) ;
 int die (int ) ;
 int free (struct if_then_else*) ;
 int pop_stack_element (struct ref_formatting_stack**) ;
 int strbuf_reset (int *) ;
 int strbuf_swap (int *,int *) ;

__attribute__((used)) static void if_then_else_handler(struct ref_formatting_stack **stack)
{
 struct ref_formatting_stack *cur = *stack;
 struct ref_formatting_stack *prev = cur->prev;
 struct if_then_else *if_then_else = (struct if_then_else *)cur->at_end_data;

 if (!if_then_else->then_atom_seen)
  die(_("format: %%(if) atom used without a %%(then) atom"));

 if (if_then_else->else_atom_seen) {





  if (if_then_else->condition_satisfied) {
   strbuf_reset(&cur->output);
   pop_stack_element(&cur);
  } else {
   strbuf_swap(&cur->output, &prev->output);
   strbuf_reset(&cur->output);
   pop_stack_element(&cur);
  }
 } else if (!if_then_else->condition_satisfied) {




  strbuf_reset(&cur->output);
 }

 *stack = cur;
 free(if_then_else);
}
