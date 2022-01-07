
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int NR_PHYS_CTRS ;
 int READ_MMIO_UPPER32 (int,int ) ;
 int READ_SHADOW_REG (int,int ) ;
 int counter_value_in_latch ;
 int * pm_ctr ;

u32 cbe_read_phys_ctr(u32 cpu, u32 phys_ctr)
{
 u32 val_in_latch, val = 0;

 if (phys_ctr < NR_PHYS_CTRS) {
  READ_SHADOW_REG(val_in_latch, counter_value_in_latch);


  if (val_in_latch & (1 << phys_ctr)) {
   READ_SHADOW_REG(val, pm_ctr[phys_ctr]);
  } else {
   READ_MMIO_UPPER32(val, pm_ctr[phys_ctr]);
  }
 }

 return val;
}
