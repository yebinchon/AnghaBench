
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fe_priv {int dummy; } ;


 int fe_alloc_rx (struct fe_priv*) ;
 int fe_alloc_tx (struct fe_priv*) ;

__attribute__((used)) static int fe_init_dma(struct fe_priv *priv)
{
 int err;

 err = fe_alloc_tx(priv);
 if (err)
  return err;

 err = fe_alloc_rx(priv);
 if (err)
  return err;

 return 0;
}
