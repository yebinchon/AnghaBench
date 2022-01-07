
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PA6T_MMCR0_FCM0 ;
 int SPRN_PA6T_MMCR0 ;
 int mfspr (int ) ;
 int mtspr (int ,int ) ;
 scalar_t__ oprofile_running ;
 int pr_debug (char*,int ,int ) ;
 int smp_processor_id () ;

__attribute__((used)) static void pa6t_stop(void)
{
 u64 mmcr0;


 mmcr0 = mfspr(SPRN_PA6T_MMCR0);
 mmcr0 |= PA6T_MMCR0_FCM0;
 mtspr(SPRN_PA6T_MMCR0, mmcr0);

 oprofile_running = 0;

 pr_debug("stop on cpu %d, mmcr0 %llx\n", smp_processor_id(), mmcr0);
}
