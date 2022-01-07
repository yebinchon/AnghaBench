
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int mpc885_get_clock (int ) ;
 int mpc8xx_set_clocks (int ) ;

int mpc885_fixup_clocks(u32 crystal)
{
 u32 sysclk = mpc885_get_clock(crystal);
 if (!sysclk)
  return 0;

 mpc8xx_set_clocks(sysclk);
 return 1;
}
