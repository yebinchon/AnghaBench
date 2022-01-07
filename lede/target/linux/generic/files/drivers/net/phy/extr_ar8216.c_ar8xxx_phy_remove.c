
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {struct ar8xxx_priv* priv; } ;
struct ar8xxx_priv {scalar_t__ use_count; int dev; int list; } ;


 scalar_t__ WARN_ON (int) ;
 int ar8xxx_dev_list_lock ;
 int ar8xxx_free (struct ar8xxx_priv*) ;
 int ar8xxx_mib_stop (struct ar8xxx_priv*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int unregister_switch (int *) ;

__attribute__((used)) static void
ar8xxx_phy_remove(struct phy_device *phydev)
{
 struct ar8xxx_priv *priv = phydev->priv;

 if (WARN_ON(!priv))
  return;

 phydev->priv = ((void*)0);

 mutex_lock(&ar8xxx_dev_list_lock);

 if (--priv->use_count > 0) {
  mutex_unlock(&ar8xxx_dev_list_lock);
  return;
 }

 list_del(&priv->list);
 mutex_unlock(&ar8xxx_dev_list_lock);

 unregister_switch(&priv->dev);
 ar8xxx_mib_stop(priv);
 ar8xxx_free(priv);
}
