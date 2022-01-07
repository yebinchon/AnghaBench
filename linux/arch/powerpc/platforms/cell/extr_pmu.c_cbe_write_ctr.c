
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int NR_PHYS_CTRS ;
 int cbe_get_ctr_size (int,int) ;
 int cbe_read_phys_ctr (int,int) ;
 int cbe_write_phys_ctr (int,int,int) ;

void cbe_write_ctr(u32 cpu, u32 ctr, u32 val)
{
 u32 phys_ctr;
 u32 phys_val;

 phys_ctr = ctr & (NR_PHYS_CTRS - 1);

 if (cbe_get_ctr_size(cpu, phys_ctr) == 16) {
  phys_val = cbe_read_phys_ctr(cpu, phys_ctr);

  if (ctr < NR_PHYS_CTRS)
   val = (val << 16) | (phys_val & 0xffff);
  else
   val = (val & 0xffff) | (phys_val & 0xffff0000);
 }

 cbe_write_phys_ctr(cpu, phys_ctr, val);
}
