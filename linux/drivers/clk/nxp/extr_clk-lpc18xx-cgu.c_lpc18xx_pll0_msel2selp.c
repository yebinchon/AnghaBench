
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 lpc18xx_pll0_msel2selp(u32 msel)
{
 if (msel < 60)
  return (msel >> 1) + 1;

 return 31;
}
