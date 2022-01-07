
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int dummy; } ;


 scalar_t__ PCM990_CTRL_LCDON ;
 scalar_t__ PCM990_CTRL_LCDPWR ;
 int PCM990_CTRL_REG3 ;
 int pcm990_cpld_writeb (scalar_t__,int ) ;

__attribute__((used)) static void pcm990_lcd_power(int on, struct fb_var_screeninfo *var)
{
 if (on) {



  pcm990_cpld_writeb(PCM990_CTRL_LCDPWR + PCM990_CTRL_LCDON,
    PCM990_CTRL_REG3);
 } else {



  pcm990_cpld_writeb(0, PCM990_CTRL_REG3);
 }
}
