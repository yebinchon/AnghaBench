
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb_priv {int td_cnt; int pending; int ** td; } ;
struct td {int dummy; } ;
struct admhcd {int dummy; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 struct urb_priv* kzalloc (int,int ) ;
 int * td_alloc (struct admhcd*,int ) ;
 int urb_priv_free (struct admhcd*,struct urb_priv*) ;

__attribute__((used)) static struct urb_priv *urb_priv_alloc(struct admhcd *ahcd, int num_tds,
  gfp_t mem_flags)
{
 struct urb_priv *priv;


 priv = kzalloc(sizeof(*priv) + sizeof(struct td) * num_tds, mem_flags);
 if (!priv)
  goto err;


 for (priv->td_cnt = 0; priv->td_cnt < num_tds; priv->td_cnt++) {
  priv->td[priv->td_cnt] = td_alloc(ahcd, mem_flags);
  if (priv->td[priv->td_cnt] == ((void*)0))
   goto err_free;
 }

 INIT_LIST_HEAD(&priv->pending);

 return priv;

err_free:
 urb_priv_free(ahcd, priv);
err:
 return ((void*)0);
}
