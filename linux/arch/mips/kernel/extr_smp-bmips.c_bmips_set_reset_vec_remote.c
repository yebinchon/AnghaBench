
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct reset_vec_info {int cpu; int val; } ;


 int bmips_read_zscm_reg (int) ;
 int bmips_write_zscm_reg (int,int) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int read_c0_brcm_bootvec () ;
 int smp_call_function_single (int ,void (*) (void*),struct reset_vec_info*,int) ;
 scalar_t__ smp_processor_id () ;
 int write_c0_brcm_bootvec (int) ;

__attribute__((used)) static void bmips_set_reset_vec_remote(void *vinfo)
{
 struct reset_vec_info *info = vinfo;
 int shift = info->cpu & 0x01 ? 16 : 0;
 u32 mask = ~(0xffff << shift), val = info->val >> 16;

 preempt_disable();
 if (smp_processor_id() > 0) {
  smp_call_function_single(0, &bmips_set_reset_vec_remote,
      info, 1);
 } else {
  if (info->cpu & 0x02) {

   bmips_write_zscm_reg(0xa0, (val << 16) | val);
   bmips_read_zscm_reg(0xa0);
  } else {
   write_c0_brcm_bootvec((read_c0_brcm_bootvec() & mask) |
           (val << shift));
  }
 }
 preempt_enable();
}
