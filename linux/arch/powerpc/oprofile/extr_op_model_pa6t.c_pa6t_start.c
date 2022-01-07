
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct op_counter_config {scalar_t__ enabled; } ;
struct TYPE_2__ {int num_pmcs; } ;


 int PA6T_MMCR0_HANDDIS ;
 int SPRN_PA6T_MMCR0 ;
 int ctr_write (int,unsigned long) ;
 TYPE_1__* cur_cpu_spec ;
 int mmcr0_val ;
 int mtspr (int ,int) ;
 int oprofile_running ;
 int pr_debug (char*,int ,int) ;
 unsigned long* reset_value ;
 int smp_processor_id () ;

__attribute__((used)) static int pa6t_start(struct op_counter_config *ctr)
{
 int i;


 u64 mmcr0 = mmcr0_val | PA6T_MMCR0_HANDDIS;

 for (i = 0; i < cur_cpu_spec->num_pmcs; i++)
  if (ctr[i].enabled)
   ctr_write(i, reset_value[i]);
  else
   ctr_write(i, 0UL);

 mtspr(SPRN_PA6T_MMCR0, mmcr0);

 oprofile_running = 1;

 pr_debug("start on cpu %d, mmcr0 %llx\n", smp_processor_id(), mmcr0);

 return 0;
}
