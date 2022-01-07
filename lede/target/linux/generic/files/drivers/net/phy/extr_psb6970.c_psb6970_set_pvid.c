
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {int vlans; } ;
struct psb6970_priv {int* pvid; } ;


 int EINVAL ;
 struct psb6970_priv* to_psb6970 (struct switch_dev*) ;

__attribute__((used)) static int psb6970_set_pvid(struct switch_dev *dev, int port, int vlan)
{
 struct psb6970_priv *priv = to_psb6970(dev);


 if (vlan >= dev->vlans)
  return -EINVAL;

 priv->pvid[port] = vlan;
 return 0;
}
