
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 unsigned long PAGE_SHIFT ;
 int PF_RANDOMIZE ;
 TYPE_1__* current ;
 unsigned long get_random_long () ;

__attribute__((used)) static unsigned long arch_rnd(unsigned int rndbits)
{
 if (!(current->flags & PF_RANDOMIZE))
  return 0;
 return (get_random_long() & ((1UL << rndbits) - 1)) << PAGE_SHIFT;
}
