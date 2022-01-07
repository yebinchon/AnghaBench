
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PA_POFF ;
 int __raw_writew (int,int ) ;
 scalar_t__ mach_is_r7780mp () ;
 scalar_t__ mach_is_r7785rp () ;

__attribute__((used)) static void r7780rp_power_off(void)
{
 if (mach_is_r7780mp() || mach_is_r7785rp())
  __raw_writew(0x0001, PA_POFF);
}
