
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct fe_soc_data {scalar_t__* reg_table; } ;
struct fe_priv {TYPE_2__* dev; struct fe_soc_data* soc; } ;
struct ethtool_drvinfo {int n_stats; int bus_info; int version; int driver; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int name; } ;


 int ARRAY_SIZE (int ) ;
 size_t FE_REG_FE_COUNTER_BASE ;
 int MTK_FE_DRV_VERSION ;
 int dev_name (TYPE_2__*) ;
 int fe_gdma_str ;
 struct fe_priv* netdev_priv (struct net_device*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void fe_get_drvinfo(struct net_device *dev,
      struct ethtool_drvinfo *info)
{
 struct fe_priv *priv = netdev_priv(dev);
 struct fe_soc_data *soc = priv->soc;

 strlcpy(info->driver, priv->dev->driver->name, sizeof(info->driver));
 strlcpy(info->version, MTK_FE_DRV_VERSION, sizeof(info->version));
 strlcpy(info->bus_info, dev_name(priv->dev), sizeof(info->bus_info));

 if (soc->reg_table[FE_REG_FE_COUNTER_BASE])
  info->n_stats = ARRAY_SIZE(fe_gdma_str);
}
