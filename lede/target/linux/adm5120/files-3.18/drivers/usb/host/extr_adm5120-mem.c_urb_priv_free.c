
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb_priv {int td_cnt; int pending; scalar_t__* td; } ;
struct admhcd {int dummy; } ;


 int kfree (struct urb_priv*) ;
 int list_del (int *) ;
 int td_free (struct admhcd*,scalar_t__) ;

__attribute__((used)) static void urb_priv_free(struct admhcd *ahcd, struct urb_priv *urb_priv)
{
 int i;

 for (i = 0; i < urb_priv->td_cnt; i++)
  if (urb_priv->td[i])
   td_free(ahcd, urb_priv->td[i]);

 list_del(&urb_priv->pending);
 kfree(urb_priv);
}
