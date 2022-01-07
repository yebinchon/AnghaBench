
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct switch_dev {char const* alias; int name; TYPE_2__* ops; int vlans; int ports; int cpu_port; } ;
struct net_device {int dummy; } ;
struct adm6996_priv {size_t model; int reg_mutex; struct switch_dev dev; } ;
struct TYPE_3__ {scalar_t__ n_attr; } ;
struct TYPE_4__ {int * get_port_link; TYPE_1__ attr_port; } ;


 size_t ADM6996FC ;
 size_t ADM6996L ;
 size_t ADM6996M ;
 int ADM_CPU_PORT ;
 int ADM_NUM_PORTS ;
 int ADM_NUM_VLANS ;
 int ADM_VID_CHECK ;
 int ENODEV ;
 int * adm6996_model_name ;
 TYPE_2__ adm6996_ops ;
 int adm6996_perform_reset (struct adm6996_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*,char const*,int ) ;
 int r16 (struct adm6996_priv*,int ) ;
 int register_switch (struct switch_dev*,struct net_device*) ;
 int w16 (struct adm6996_priv*,int ,int) ;

__attribute__((used)) static int adm6996_switch_init(struct adm6996_priv *priv, const char *alias, struct net_device *netdev)
{
 struct switch_dev *swdev;
 u16 test, old;

 if (!priv->model) {

  old = r16(priv, ADM_VID_CHECK);
  test = old ^ (1 << 12);
  w16(priv, ADM_VID_CHECK, test);
  test ^= r16(priv, ADM_VID_CHECK);
  if (test & (1 << 12)) {




   priv->model = ADM6996FC;
  } else {

   priv->model = ADM6996M;
   w16(priv, ADM_VID_CHECK, old);
  }
 }

 swdev = &priv->dev;
 swdev->name = (adm6996_model_name[priv->model]);
 swdev->cpu_port = ADM_CPU_PORT;
 swdev->ports = ADM_NUM_PORTS;
 swdev->vlans = ADM_NUM_VLANS;
 swdev->ops = &adm6996_ops;
 swdev->alias = alias;



 if (priv->model == ADM6996L) {
  adm6996_ops.attr_port.n_attr = 0;
  adm6996_ops.get_port_link = ((void*)0);
 }

 pr_info ("%s: %s model PHY found.\n", alias, swdev->name);

 mutex_lock(&priv->reg_mutex);
 adm6996_perform_reset (priv);
 mutex_unlock(&priv->reg_mutex);

 if (priv->model == ADM6996M || priv->model == ADM6996L) {
  return register_switch(swdev, netdev);
 }

 return -ENODEV;
}
