
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct charlcd {int dummy; } ;


 int NOTIFY_DONE ;



 int charlcd_puts (struct charlcd*,char*) ;
 struct charlcd* the_charlcd ;

__attribute__((used)) static int panel_notify_sys(struct notifier_block *this, unsigned long code,
       void *unused)
{
 struct charlcd *lcd = the_charlcd;

 switch (code) {
 case 130:
  charlcd_puts(lcd,
        "\x0cReloading\nSystem...\x1b[Lc\x1b[Lb\x1b[L+");
  break;
 case 129:
  charlcd_puts(lcd, "\x0cSystem Halted.\x1b[Lc\x1b[Lb\x1b[L+");
  break;
 case 128:
  charlcd_puts(lcd, "\x0cPower off.\x1b[Lc\x1b[Lb\x1b[L+");
  break;
 default:
  break;
 }
 return NOTIFY_DONE;
}
