
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPR_PMR ;
 int SPR_PMR_DME ;
 int SPR_UPR ;
 int SPR_UPR_PMP ;
 int local_irq_disable () ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;
 int set_cpu_online (int ,int) ;
 int smp_processor_id () ;

__attribute__((used)) static void stop_this_cpu(void *dummy)
{

 set_cpu_online(smp_processor_id(), 0);

 local_irq_disable();

 if (mfspr(SPR_UPR) & SPR_UPR_PMP)
  mtspr(SPR_PMR, mfspr(SPR_PMR) | SPR_PMR_DME);

 while (1)
  ;
}
