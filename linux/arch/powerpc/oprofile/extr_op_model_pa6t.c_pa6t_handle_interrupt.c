
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct pt_regs {int dummy; } ;
struct op_counter_config {scalar_t__ enabled; } ;
struct TYPE_2__ {int num_pmcs; } ;


 int PA6T_MMCR0_HANDDIS ;
 int PA6T_MMCR0_SIARLOG ;
 int SPRN_PA6T_MMCR0 ;
 int SPRN_PA6T_SIAR ;
 int ctr_read (int) ;
 int ctr_write (int,unsigned long) ;
 TYPE_1__* cur_cpu_spec ;
 int is_kernel_addr (unsigned long) ;
 void* mfspr (int ) ;
 int mmcr0_val ;
 int mtspr (int ,int) ;
 int oprofile_add_ext_sample (unsigned long,struct pt_regs*,int,int) ;
 scalar_t__ oprofile_running ;
 unsigned long* reset_value ;

__attribute__((used)) static void pa6t_handle_interrupt(struct pt_regs *regs,
      struct op_counter_config *ctr)
{
 unsigned long pc = mfspr(SPRN_PA6T_SIAR);
 int is_kernel = is_kernel_addr(pc);
 u64 val;
 int i;
 u64 mmcr0;


 mmcr0 = mfspr(SPRN_PA6T_MMCR0);
 mtspr(SPRN_PA6T_MMCR0, mmcr0 | PA6T_MMCR0_HANDDIS);




 for (i = 0; i < cur_cpu_spec->num_pmcs; i++) {
  val = ctr_read(i);
  if (val & (0x1UL << 39)) {
   if (oprofile_running && ctr[i].enabled) {
    if (mmcr0 & PA6T_MMCR0_SIARLOG)
     oprofile_add_ext_sample(pc, regs, i, is_kernel);
    ctr_write(i, reset_value[i]);
   } else {
    ctr_write(i, 0UL);
   }
  }
 }


 mmcr0 = mmcr0_val | PA6T_MMCR0_HANDDIS;
 mtspr(SPRN_PA6T_MMCR0, mmcr0);
}
