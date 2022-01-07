
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_stack {scalar_t__ nr; struct commit** items; int alloc; } ;
struct commit {int dummy; } ;


 int ALLOC_GROW (struct commit**,scalar_t__,int ) ;

__attribute__((used)) static void commit_stack_push(struct commit_stack *stack, struct commit *commit)
{
 ALLOC_GROW(stack->items, stack->nr + 1, stack->alloc);
 stack->items[stack->nr++] = commit;
}
