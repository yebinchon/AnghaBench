
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IDP_CPLD_LCD ;

__attribute__((used)) static void idp_backlight_power(int on)
{
 if (on) {
  IDP_CPLD_LCD |= (1<<1);
 } else {
  IDP_CPLD_LCD &= ~(1<<1);
 }
}
