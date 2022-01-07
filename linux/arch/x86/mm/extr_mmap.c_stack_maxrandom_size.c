
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 unsigned long PAGE_SHIFT ;
 int PF_RANDOMIZE ;
 unsigned long __STACK_RND_MASK (int) ;
 TYPE_1__* current ;
 unsigned long task_size_32bit () ;

__attribute__((used)) static unsigned long stack_maxrandom_size(unsigned long task_size)
{
 unsigned long max = 0;
 if (current->flags & PF_RANDOMIZE) {
  max = (-1UL) & __STACK_RND_MASK(task_size == task_size_32bit());
  max <<= PAGE_SHIFT;
 }

 return max;
}
