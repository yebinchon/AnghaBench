
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_formatting_stack {int output; struct ref_formatting_stack* prev; } ;


 int free (struct ref_formatting_stack*) ;
 int strbuf_addbuf (int *,int *) ;
 int strbuf_release (int *) ;

__attribute__((used)) static void pop_stack_element(struct ref_formatting_stack **stack)
{
 struct ref_formatting_stack *current = *stack;
 struct ref_formatting_stack *prev = current->prev;

 if (prev)
  strbuf_addbuf(&prev->output, &current->output);
 strbuf_release(&current->output);
 free(current);
 *stack = prev;
}
