
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {TYPE_1__* per_cpu; } ;
struct TYPE_3__ {int resume_addr; } ;


 int AL_SYSFAB_POWER_CONTROL (unsigned int) ;
 int ENOSYS ;
 TYPE_2__* al_cpu_resume_regs ;
 int al_sysfabric ;
 int regmap_write (int ,int ,int ) ;
 int wakeup_supported ;
 int writel (int ,int *) ;

int alpine_cpu_wakeup(unsigned int phys_cpu, uint32_t phys_resume_addr)
{
 if (!wakeup_supported)
  return -ENOSYS;







 writel(phys_resume_addr,
        &al_cpu_resume_regs->per_cpu[phys_cpu].resume_addr);


 regmap_write(al_sysfabric, AL_SYSFAB_POWER_CONTROL(phys_cpu), 0);

 return 0;
}
