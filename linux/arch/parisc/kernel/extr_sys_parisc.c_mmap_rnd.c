
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 unsigned long MMAP_RND_MASK ;
 unsigned long PAGE_SHIFT ;
 int PF_RANDOMIZE ;
 TYPE_1__* current ;
 unsigned long get_random_int () ;

__attribute__((used)) static unsigned long mmap_rnd(void)
{
 unsigned long rnd = 0;

 if (current->flags & PF_RANDOMIZE)
  rnd = get_random_int() & MMAP_RND_MASK;

 return rnd << PAGE_SHIFT;
}
