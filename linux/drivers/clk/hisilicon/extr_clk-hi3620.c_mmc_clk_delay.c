
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 mmc_clk_delay(u32 val, u32 para, u32 off, u32 len)
{
 u32 i;

 for (i = 0; i < len; i++) {
  if (para % 2)
   val |= 1 << (off + i);
  else
   val &= ~(1 << (off + i));
  para = para >> 1;
 }

 return val;
}
