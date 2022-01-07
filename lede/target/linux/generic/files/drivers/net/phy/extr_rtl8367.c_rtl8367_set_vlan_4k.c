
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8366_vlan_4k {int vid; int member; int untag; int fid; } ;
struct rtl8366_smi {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int REG_WR (struct rtl8366_smi*,int ,int) ;
 int RTL8367_FIDMAX ;
 int RTL8367_NUM_VIDS ;
 int RTL8367_TA_ADDR_REG ;
 int RTL8367_TA_CTRL_CVLAN_WRITE ;
 int RTL8367_TA_CTRL_REG ;
 int RTL8367_TA_DATA_REG (int) ;
 int RTL8367_TA_VLAN_DATA_SIZE ;
 int RTL8367_TA_VLAN_FID_MASK ;
 int RTL8367_TA_VLAN_FID_SHIFT ;
 int RTL8367_TA_VLAN_MEMBER_MASK ;
 int RTL8367_TA_VLAN_MEMBER_SHIFT ;
 int RTL8367_TA_VLAN_UNTAG1_MASK ;
 int RTL8367_TA_VLAN_UNTAG1_SHIFT ;
 int RTL8367_TA_VLAN_UNTAG2_MASK ;
 int RTL8367_TA_VLAN_UNTAG2_SHIFT ;
 int RTL8367_TA_VLAN_VID_MASK ;
 int RTL8367_UNTAG_MASK ;

__attribute__((used)) static int rtl8367_set_vlan_4k(struct rtl8366_smi *smi,
    const struct rtl8366_vlan_4k *vlan4k)
{
 u32 data[RTL8367_TA_VLAN_DATA_SIZE];
 int err;
 int i;

 if (vlan4k->vid >= RTL8367_NUM_VIDS ||
     vlan4k->member > RTL8367_TA_VLAN_MEMBER_MASK ||
     vlan4k->untag > RTL8367_UNTAG_MASK ||
     vlan4k->fid > RTL8367_FIDMAX)
  return -EINVAL;

 data[0] = (vlan4k->member & RTL8367_TA_VLAN_MEMBER_MASK) <<
    RTL8367_TA_VLAN_MEMBER_SHIFT;
 data[1] = (vlan4k->fid & RTL8367_TA_VLAN_FID_MASK) <<
    RTL8367_TA_VLAN_FID_SHIFT;
 data[2] = (vlan4k->untag & RTL8367_TA_VLAN_UNTAG1_MASK) <<
    RTL8367_TA_VLAN_UNTAG1_SHIFT;
 data[3] = ((vlan4k->untag >> 2) & RTL8367_TA_VLAN_UNTAG2_MASK) <<
    RTL8367_TA_VLAN_UNTAG2_SHIFT;

 for (i = 0; i < ARRAY_SIZE(data); i++)
  REG_WR(smi, RTL8367_TA_DATA_REG(i), data[i]);


 REG_WR(smi, RTL8367_TA_ADDR_REG,
        vlan4k->vid & RTL8367_TA_VLAN_VID_MASK);


 REG_WR(smi, RTL8367_TA_CTRL_REG, RTL8367_TA_CTRL_CVLAN_WRITE);

 return 0;
}
