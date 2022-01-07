
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct device_node {int dummy; } ;


 int EINVAL ;
 scalar_t__ VEXPRESS_SITE_MASTER ;
 scalar_t__ WARN_ON (int) ;
 int vexpress_config_find_prop (struct device_node*,char*,scalar_t__*) ;
 scalar_t__ vexpress_config_site_master ;

int vexpress_config_get_topo(struct device_node *node, u32 *site,
  u32 *position, u32 *dcc)
{
 vexpress_config_find_prop(node, "arm,vexpress,site", site);
 if (*site == VEXPRESS_SITE_MASTER)
  *site = vexpress_config_site_master;
 if (WARN_ON(vexpress_config_site_master == VEXPRESS_SITE_MASTER))
  return -EINVAL;
 vexpress_config_find_prop(node, "arm,vexpress,position", position);
 vexpress_config_find_prop(node, "arm,vexpress,dcc", dcc);

 return 0;
}
