
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* abi; } ;
struct TYPE_8__ {int flags; TYPE_3__ thread; } ;
struct TYPE_6__ {TYPE_1__* vdso; } ;
struct TYPE_5__ {int size; } ;


 scalar_t__ PAGE_ALIGN (int ) ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SIZE ;
 int PF_RANDOMIZE ;
 unsigned long TASK_SIZE ;
 scalar_t__ VDSO_RANDOMIZE_SIZE ;
 scalar_t__ cpu_has_dc_aliases ;
 TYPE_4__* current ;
 scalar_t__ mips_gic_present () ;
 scalar_t__ shm_align_mask ;

unsigned long mips_stack_top(void)
{
 unsigned long top = TASK_SIZE & PAGE_MASK;


 top -= PAGE_SIZE;


 top -= PAGE_ALIGN(current->thread.abi->vdso->size);
 top -= PAGE_SIZE;
 top -= mips_gic_present() ? PAGE_SIZE : 0;


 if (cpu_has_dc_aliases)
  top -= shm_align_mask + 1;


 if (current->flags & PF_RANDOMIZE)
  top -= VDSO_RANDOMIZE_SIZE;

 return top;
}
