
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rtl8366_smi {TYPE_2__* parent; } ;
struct rtl8366_platform_data {unsigned int num_initvals; TYPE_1__* initvals; } ;
struct device_node {int dummy; } ;
typedef int __be32 ;
struct TYPE_4__ {struct device_node* of_node; struct rtl8366_platform_data* platform_data; } ;
struct TYPE_3__ {int val; int reg; } ;


 int EINVAL ;
 int REG_RMW (struct rtl8366_smi*,int ,int ,int ) ;
 int REG_WR (struct rtl8366_smi*,int ,int ) ;
 unsigned int RTL8366S_PHY_NO_MAX ;
 int RTL8366S_PORT_ALL ;
 int RTL8366S_SGCR ;
 int RTL8366S_SGCR_MAX_LENGTH_1536 ;
 int RTL8366S_SGCR_MAX_LENGTH_MASK ;
 int RTL8366S_SSCR0 ;
 int RTL8366S_SSCR1 ;
 int RTL8366S_SSCR2 ;
 int RTL8366S_SSCR2_DROP_UNKNOWN_DA ;
 int RTL8366S_VLAN_MEMBERINGRESS_REG ;
 int be32_to_cpup (int const*) ;
 int dev_info (TYPE_2__*,char*) ;
 int * of_get_property (struct device_node*,char*,unsigned int*) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int rtl8366s_set_green (struct rtl8366_smi*,int) ;
 int rtl8366s_set_green_port (struct rtl8366_smi*,unsigned int,int) ;

__attribute__((used)) static int rtl8366s_setup(struct rtl8366_smi *smi)
{
 struct rtl8366_platform_data *pdata;
 int err;
 unsigned i;






 pdata = smi->parent->platform_data;
 if (pdata && pdata->num_initvals && pdata->initvals) {
  dev_info(smi->parent, "applying initvals\n");
  for (i = 0; i < pdata->num_initvals; i++)
   REG_WR(smi, pdata->initvals[i].reg,
          pdata->initvals[i].val);
 }
 REG_RMW(smi, RTL8366S_SGCR, RTL8366S_SGCR_MAX_LENGTH_MASK,
  RTL8366S_SGCR_MAX_LENGTH_1536);


 REG_WR(smi, RTL8366S_SSCR0, 0);


 REG_WR(smi, RTL8366S_SSCR1, 0);





 REG_WR(smi, RTL8366S_VLAN_MEMBERINGRESS_REG, RTL8366S_PORT_ALL);


 REG_RMW(smi, RTL8366S_SSCR2, RTL8366S_SSCR2_DROP_UNKNOWN_DA, 0);

 return 0;
}
