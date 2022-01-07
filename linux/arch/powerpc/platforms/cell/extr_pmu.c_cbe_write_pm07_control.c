
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 size_t NR_CTRS ;
 int WRITE_WO_MMIO (int ,size_t) ;
 int * pm07_control ;

void cbe_write_pm07_control(u32 cpu, u32 ctr, u32 val)
{
 if (ctr < NR_CTRS)
  WRITE_WO_MMIO(pm07_control[ctr], val);
}
