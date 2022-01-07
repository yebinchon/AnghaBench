
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar8xxx_priv {int mib_work; } ;


 int ar8xxx_has_mib_counters (struct ar8xxx_priv*) ;
 int cancel_delayed_work_sync (int *) ;

__attribute__((used)) static void
ar8xxx_mib_stop(struct ar8xxx_priv *priv)
{
 if (!ar8xxx_has_mib_counters(priv))
  return;

 cancel_delayed_work_sync(&priv->mib_work);
}
