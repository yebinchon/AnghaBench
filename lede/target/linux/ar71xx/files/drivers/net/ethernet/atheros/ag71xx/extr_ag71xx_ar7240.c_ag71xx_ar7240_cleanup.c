
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar7240sw {int swdev; } ;
struct ag71xx {struct ar7240sw* phy_priv; } ;


 int kfree (struct ar7240sw*) ;
 int unregister_switch (int *) ;

void ag71xx_ar7240_cleanup(struct ag71xx *ag)
{
 struct ar7240sw *as = ag->phy_priv;

 if (!as)
  return;

 unregister_switch(&as->swdev);
 kfree(as);
 ag->phy_priv = ((void*)0);
}
