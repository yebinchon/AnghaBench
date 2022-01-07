
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long PAGE_SIZE ;
 int PF_RANDOMIZE ;
 unsigned long STACK_TOP ;
 int VDSO_RANDOMIZE_SIZE ;
 TYPE_1__* current ;
 int get_random_int () ;

__attribute__((used)) static unsigned long vdso_base(void)
{
 unsigned long base;


 base = STACK_TOP + PAGE_SIZE;

 if (current->flags & PF_RANDOMIZE) {
  base += get_random_int() & (VDSO_RANDOMIZE_SIZE - 1);
  base = PAGE_ALIGN(base);
 }

 return base;
}
