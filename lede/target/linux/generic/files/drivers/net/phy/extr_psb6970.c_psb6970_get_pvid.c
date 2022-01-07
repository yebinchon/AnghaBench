
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {int dummy; } ;
struct psb6970_priv {int* pvid; } ;


 struct psb6970_priv* to_psb6970 (struct switch_dev*) ;

__attribute__((used)) static int psb6970_get_pvid(struct switch_dev *dev, int port, int *vlan)
{
 struct psb6970_priv *priv = to_psb6970(dev);
 *vlan = priv->pvid[port];
 return 0;
}
