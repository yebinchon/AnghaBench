
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct charlcd {int dummy; } ;


 int charlcd_dev ;
 int charlcd_init (struct charlcd*) ;
 int misc_register (int *) ;
 int panel_notifier ;
 int register_reboot_notifier (int *) ;
 struct charlcd* the_charlcd ;

int charlcd_register(struct charlcd *lcd)
{
 int ret;

 ret = charlcd_init(lcd);
 if (ret)
  return ret;

 ret = misc_register(&charlcd_dev);
 if (ret)
  return ret;

 the_charlcd = lcd;
 register_reboot_notifier(&panel_notifier);
 return 0;
}
