
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8366_vlan_4k {int vid; int member; int untag; int fid; } ;
struct rtl8366_smi {int dummy; } ;
typedef int data ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int REG_WR (struct rtl8366_smi*,int ,int) ;
 int RTL8367B_FIDMAX ;
 int RTL8367B_NUM_VIDS ;
 int RTL8367B_TA_ADDR_REG ;
 int RTL8367B_TA_CTRL_CVLAN_WRITE ;
 int RTL8367B_TA_CTRL_REG ;
 int RTL8367B_TA_VLAN0_MEMBER_MASK ;
 int RTL8367B_TA_VLAN0_MEMBER_SHIFT ;
 int RTL8367B_TA_VLAN0_UNTAG_MASK ;
 int RTL8367B_TA_VLAN0_UNTAG_SHIFT ;
 int RTL8367B_TA_VLAN1_FID_MASK ;
 int RTL8367B_TA_VLAN1_FID_SHIFT ;
 int RTL8367B_TA_VLAN_NUM_WORDS ;
 int RTL8367B_TA_VLAN_VID_MASK ;
 int RTL8367B_TA_WRDATA_REG (int) ;
 int RTL8367B_UNTAG_MASK ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int rtl8367b_set_vlan_4k(struct rtl8366_smi *smi,
    const struct rtl8366_vlan_4k *vlan4k)
{
 u32 data[RTL8367B_TA_VLAN_NUM_WORDS];
 int err;
 int i;

 if (vlan4k->vid >= RTL8367B_NUM_VIDS ||
     vlan4k->member > RTL8367B_TA_VLAN0_MEMBER_MASK ||
     vlan4k->untag > RTL8367B_UNTAG_MASK ||
     vlan4k->fid > RTL8367B_FIDMAX)
  return -EINVAL;

 memset(data, 0, sizeof(data));

 data[0] = (vlan4k->member & RTL8367B_TA_VLAN0_MEMBER_MASK) <<
    RTL8367B_TA_VLAN0_MEMBER_SHIFT;
 data[0] |= (vlan4k->untag & RTL8367B_TA_VLAN0_UNTAG_MASK) <<
     RTL8367B_TA_VLAN0_UNTAG_SHIFT;
 data[1] = (vlan4k->fid & RTL8367B_TA_VLAN1_FID_MASK) <<
    RTL8367B_TA_VLAN1_FID_SHIFT;

 for (i = 0; i < ARRAY_SIZE(data); i++)
  REG_WR(smi, RTL8367B_TA_WRDATA_REG(i), data[i]);


 REG_WR(smi, RTL8367B_TA_ADDR_REG,
        vlan4k->vid & RTL8367B_TA_VLAN_VID_MASK);


 REG_WR(smi, RTL8367B_TA_CTRL_REG, RTL8367B_TA_CTRL_CVLAN_WRITE);

 return 0;
}
