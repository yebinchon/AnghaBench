
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 unsigned long PAGE_SHIFT ;
 int PF_RANDOMIZE ;
 unsigned long STACK_RND_MASK ;
 TYPE_1__* current ;

__attribute__((used)) static unsigned long stack_maxrandom_size(void)
{
 if (!(current->flags & PF_RANDOMIZE))
  return 0;
 return STACK_RND_MASK << PAGE_SHIFT;
}
