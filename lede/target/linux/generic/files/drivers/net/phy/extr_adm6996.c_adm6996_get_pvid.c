
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {int dummy; } ;
struct adm6996_priv {int* pvid; } ;


 int pr_devel (char*,int) ;
 struct adm6996_priv* to_adm (struct switch_dev*) ;

__attribute__((used)) static int
adm6996_get_pvid(struct switch_dev *dev, int port, int *vlan)
{
 struct adm6996_priv *priv = to_adm(dev);

 pr_devel("get_pvid port %d\n", port);
 *vlan = priv->pvid[port];

 return 0;
}
