
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int dummy; } ;


 int IDP_CPLD_LCD ;
 int idp_vlcd (int) ;

__attribute__((used)) static void idp_lcd_power(int on, struct fb_var_screeninfo *var)
{
 if (on) {
  IDP_CPLD_LCD |= (1<<0);
 } else {
  IDP_CPLD_LCD &= ~(1<<0);
 }







 idp_vlcd(on);
}
