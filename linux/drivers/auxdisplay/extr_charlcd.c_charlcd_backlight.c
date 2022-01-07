
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct charlcd_priv {int bl_tempo_lock; int bl_tempo; } ;
struct charlcd {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* backlight ) (struct charlcd*,int) ;} ;


 struct charlcd_priv* charlcd_to_priv (struct charlcd*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct charlcd*,int) ;

__attribute__((used)) static void charlcd_backlight(struct charlcd *lcd, int on)
{
 struct charlcd_priv *priv = charlcd_to_priv(lcd);

 if (!lcd->ops->backlight)
  return;

 mutex_lock(&priv->bl_tempo_lock);
 if (!priv->bl_tempo)
  lcd->ops->backlight(lcd, on);
 mutex_unlock(&priv->bl_tempo_lock);
}
