
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rtl8366_smi {TYPE_1__* parent; } ;
struct device_node {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {struct device_node* of_node; } ;


 int EINVAL ;
 int REG_RMW (struct rtl8366_smi*,int ,int ,int ) ;
 int REG_WR (struct rtl8366_smi*,int ,int ) ;
 int RTL8366RB_PORT_ALL ;
 int RTL8366RB_SGCR ;
 int RTL8366RB_SGCR_MAX_LENGTH_1536 ;
 int RTL8366RB_SGCR_MAX_LENGTH_MASK ;
 int RTL8366RB_SSCR0 ;
 int RTL8366RB_SSCR1 ;
 int RTL8366RB_SSCR2 ;
 int RTL8366RB_SSCR2_DROP_UNKNOWN_DA ;
 int RTL8366RB_VLAN_INGRESS_CTRL2_REG ;
 int be32_to_cpup (int const*) ;
 int dev_info (TYPE_1__*,char*) ;
 int * of_get_property (struct device_node*,char*,unsigned int*) ;

__attribute__((used)) static int rtl8366rb_setup(struct rtl8366_smi *smi)
{
 int err;
 REG_RMW(smi, RTL8366RB_SGCR, RTL8366RB_SGCR_MAX_LENGTH_MASK,
  RTL8366RB_SGCR_MAX_LENGTH_1536);


 REG_WR(smi, RTL8366RB_SSCR0, 0);


 REG_WR(smi, RTL8366RB_SSCR1, 0);





 REG_WR(smi, RTL8366RB_VLAN_INGRESS_CTRL2_REG, RTL8366RB_PORT_ALL);


 REG_RMW(smi, RTL8366RB_SSCR2, RTL8366RB_SSCR2_DROP_UNKNOWN_DA, 0);

 return 0;
}
