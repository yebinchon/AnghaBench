
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_stack {int nr; struct commit** items; } ;
struct commit {int dummy; } ;



__attribute__((used)) static struct commit *commit_stack_pop(struct commit_stack *stack)
{
 return stack->nr ? stack->items[--stack->nr] : ((void*)0);
}
