
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_formatting_stack {struct ref_formatting_stack* prev; int output; } ;


 int strbuf_init (int *,int ) ;
 struct ref_formatting_stack* xcalloc (int,int) ;

__attribute__((used)) static void push_stack_element(struct ref_formatting_stack **stack)
{
 struct ref_formatting_stack *s = xcalloc(1, sizeof(struct ref_formatting_stack));

 strbuf_init(&s->output, 0);
 s->prev = *stack;
 *stack = s;
}
