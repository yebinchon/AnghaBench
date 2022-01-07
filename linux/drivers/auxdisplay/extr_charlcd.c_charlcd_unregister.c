
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* ops; } ;
struct charlcd_priv {TYPE_3__ lcd; int bl_work; } ;
struct charlcd {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* backlight ) (TYPE_3__*,int ) ;} ;
struct TYPE_4__ {scalar_t__ backlight; } ;


 int cancel_delayed_work_sync (int *) ;
 int charlcd_dev ;
 int charlcd_puts (struct charlcd*,char*) ;
 struct charlcd_priv* charlcd_to_priv (struct charlcd*) ;
 int misc_deregister (int *) ;
 int panel_notifier ;
 int stub1 (TYPE_3__*,int ) ;
 int * the_charlcd ;
 int unregister_reboot_notifier (int *) ;

int charlcd_unregister(struct charlcd *lcd)
{
 struct charlcd_priv *priv = charlcd_to_priv(lcd);

 unregister_reboot_notifier(&panel_notifier);
 charlcd_puts(lcd, "\x0cLCD driver unloaded.\x1b[Lc\x1b[Lb\x1b[L-");
 misc_deregister(&charlcd_dev);
 the_charlcd = ((void*)0);
 if (lcd->ops->backlight) {
  cancel_delayed_work_sync(&priv->bl_work);
  priv->lcd.ops->backlight(&priv->lcd, 0);
 }

 return 0;
}
