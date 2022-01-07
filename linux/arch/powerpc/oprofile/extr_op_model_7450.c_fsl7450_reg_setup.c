
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct op_system_config {scalar_t__ enable_user; scalar_t__ enable_kernel; } ;
struct op_counter_config {int event; scalar_t__ count; } ;


 int MMCR0_FCP ;
 int MMCR0_FCS ;
 int MMCR0_INIT ;
 int mmcr0_event1 (int ) ;
 int mmcr0_event2 (int ) ;
 int mmcr0_val ;
 int mmcr1_event3 (int ) ;
 int mmcr1_event4 (int ) ;
 int mmcr1_event5 (int ) ;
 int mmcr1_event6 (int ) ;
 int mmcr1_val ;
 scalar_t__ mmcr2_val ;
 int num_pmcs ;
 scalar_t__* reset_value ;

__attribute__((used)) static int fsl7450_reg_setup(struct op_counter_config *ctr,
        struct op_system_config *sys,
        int num_ctrs)
{
 int i;

 num_pmcs = num_ctrs;





 for (i = 0; i < num_ctrs; ++i)
  reset_value[i] = 0x80000000UL - ctr[i].count;


 mmcr0_val = MMCR0_INIT | mmcr0_event1(ctr[0].event)
  | mmcr0_event2(ctr[1].event);


 if (sys->enable_kernel)
  mmcr0_val &= ~(MMCR0_FCS);

 if (sys->enable_user)
  mmcr0_val &= ~(MMCR0_FCP);


 mmcr1_val = mmcr1_event3(ctr[2].event)
  | mmcr1_event4(ctr[3].event);
 if (num_ctrs > 4)
  mmcr1_val |= mmcr1_event5(ctr[4].event)
   | mmcr1_event6(ctr[5].event);

 mmcr2_val = 0;

 return 0;
}
