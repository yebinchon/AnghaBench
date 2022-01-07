
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CGU_SYS ;
 unsigned long DDR_HZ ;
 int ltq_cgu_r32 (int ) ;

unsigned long ltq_danube_fpi_hz(void)
{
 unsigned long ddr_clock = DDR_HZ;

 if (ltq_cgu_r32(CGU_SYS) & 0x40)
  return ddr_clock >> 1;
 return ddr_clock;
}
