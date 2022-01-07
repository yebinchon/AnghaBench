
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_stack {scalar_t__ alloc; scalar_t__ nr; int items; } ;


 int FREE_AND_NULL (int ) ;

__attribute__((used)) static void commit_stack_clear(struct commit_stack *stack)
{
 FREE_AND_NULL(stack->items);
 stack->nr = stack->alloc = 0;
}
