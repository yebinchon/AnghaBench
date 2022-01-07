
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_creg_mask_parms {unsigned long member_1; int member_2; int member_0; } ;


 int on_each_cpu (int ,struct ec_creg_mask_parms*,int) ;
 int smp_ctl_bit_callback ;

void smp_ctl_clear_bit(int cr, int bit)
{
 struct ec_creg_mask_parms parms = { 0, ~(1UL << bit), cr };

 on_each_cpu(smp_ctl_bit_callback, &parms, 1);
}
