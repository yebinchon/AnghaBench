
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct charlcd_priv {int bl_tempo; int flags; int bl_tempo_lock; int bl_work; } ;
struct charlcd {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* backlight ) (struct charlcd*,int) ;} ;


 int HZ ;
 int LCD_BL_TEMPO_PERIOD ;
 int LCD_FLAG_L ;
 int cancel_delayed_work_sync (int *) ;
 struct charlcd_priv* charlcd_to_priv (struct charlcd*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_delayed_work (int *,int) ;
 int stub1 (struct charlcd*,int) ;

void charlcd_poke(struct charlcd *lcd)
{
 struct charlcd_priv *priv = charlcd_to_priv(lcd);

 if (!lcd->ops->backlight)
  return;

 cancel_delayed_work_sync(&priv->bl_work);

 mutex_lock(&priv->bl_tempo_lock);
 if (!priv->bl_tempo && !(priv->flags & LCD_FLAG_L))
  lcd->ops->backlight(lcd, 1);
 priv->bl_tempo = 1;
 schedule_delayed_work(&priv->bl_work, LCD_BL_TEMPO_PERIOD * HZ);
 mutex_unlock(&priv->bl_tempo_lock);
}
