
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nr_segments; TYPE_1__* segment; } ;
struct TYPE_3__ {int memsz; int mem; } ;


 int PAGE_SHIFT ;
 int __phys_to_virt (int ) ;
 TYPE_2__* kexec_crash_image ;
 int set_memory_valid (int ,int,int) ;

void arch_kexec_unprotect_crashkres(void)
{
 int i;

 for (i = 0; i < kexec_crash_image->nr_segments; i++)
  set_memory_valid(
   __phys_to_virt(kexec_crash_image->segment[i].mem),
   kexec_crash_image->segment[i].memsz >> PAGE_SHIFT, 1);
}
