
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_group_priv {unsigned int idle; int lock; struct mpic_timer* timer; } ;
struct mpic_timer {struct cascade_priv* cascade_handle; } ;
struct cascade_priv {unsigned int cascade_map; unsigned int timer_num; } ;


 unsigned int ARRAY_SIZE (struct cascade_priv*) ;
 struct cascade_priv* cascade_timer ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct mpic_timer *detect_idle_cascade_timer(
     struct timer_group_priv *priv)
{
 struct cascade_priv *casc_priv;
 unsigned int map;
 unsigned int array_size = ARRAY_SIZE(cascade_timer);
 unsigned int num;
 unsigned int i;
 unsigned long flags;

 casc_priv = cascade_timer;
 for (i = 0; i < array_size; i++) {
  spin_lock_irqsave(&priv->lock, flags);
  map = casc_priv->cascade_map & priv->idle;
  if (map == casc_priv->cascade_map) {
   num = casc_priv->timer_num;
   priv->timer[num].cascade_handle = casc_priv;


   priv->idle &= ~casc_priv->cascade_map;
   spin_unlock_irqrestore(&priv->lock, flags);
   return &priv->timer[num];
  }
  spin_unlock_irqrestore(&priv->lock, flags);
  casc_priv++;
 }

 return ((void*)0);
}
