
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_creg_mask_parms {unsigned long member_0; unsigned long member_1; int member_2; } ;


 int on_each_cpu (int ,struct ec_creg_mask_parms*,int) ;
 int smp_ctl_bit_callback ;

void smp_ctl_set_bit(int cr, int bit)
{
 struct ec_creg_mask_parms parms = { 1UL << bit, -1UL, cr };

 on_each_cpu(smp_ctl_bit_callback, &parms, 1);
}
