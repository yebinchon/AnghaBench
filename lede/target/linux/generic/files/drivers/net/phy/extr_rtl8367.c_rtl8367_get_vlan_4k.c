
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rtl8366_vlan_4k {scalar_t__ untag; scalar_t__ fid; scalar_t__ member; scalar_t__ vid; } ;
struct rtl8366_smi {int dummy; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int EINVAL ;
 int REG_RD (struct rtl8366_smi*,int ,scalar_t__*) ;
 int REG_WR (struct rtl8366_smi*,int ,scalar_t__) ;
 scalar_t__ RTL8367_NUM_VIDS ;
 int RTL8367_TA_ADDR_REG ;
 scalar_t__ RTL8367_TA_CTRL_CVLAN_READ ;
 int RTL8367_TA_CTRL_REG ;
 int RTL8367_TA_DATA_REG (int) ;
 int RTL8367_TA_VLAN_DATA_SIZE ;
 scalar_t__ RTL8367_TA_VLAN_FID_MASK ;
 scalar_t__ RTL8367_TA_VLAN_FID_SHIFT ;
 scalar_t__ RTL8367_TA_VLAN_MEMBER_MASK ;
 scalar_t__ RTL8367_TA_VLAN_MEMBER_SHIFT ;
 scalar_t__ RTL8367_TA_VLAN_UNTAG1_MASK ;
 scalar_t__ RTL8367_TA_VLAN_UNTAG1_SHIFT ;
 scalar_t__ RTL8367_TA_VLAN_UNTAG2_MASK ;
 scalar_t__ RTL8367_TA_VLAN_UNTAG2_SHIFT ;
 int memset (struct rtl8366_vlan_4k*,char,int) ;

__attribute__((used)) static int rtl8367_get_vlan_4k(struct rtl8366_smi *smi, u32 vid,
    struct rtl8366_vlan_4k *vlan4k)
{
 u32 data[RTL8367_TA_VLAN_DATA_SIZE];
 int err;
 int i;

 memset(vlan4k, '\0', sizeof(struct rtl8366_vlan_4k));

 if (vid >= RTL8367_NUM_VIDS)
  return -EINVAL;


 REG_WR(smi, RTL8367_TA_ADDR_REG, vid);


 REG_WR(smi, RTL8367_TA_CTRL_REG, RTL8367_TA_CTRL_CVLAN_READ);

 for (i = 0; i < ARRAY_SIZE(data); i++)
  REG_RD(smi, RTL8367_TA_DATA_REG(i), &data[i]);

 vlan4k->vid = vid;
 vlan4k->member = (data[0] >> RTL8367_TA_VLAN_MEMBER_SHIFT) &
    RTL8367_TA_VLAN_MEMBER_MASK;
 vlan4k->fid = (data[1] >> RTL8367_TA_VLAN_FID_SHIFT) &
        RTL8367_TA_VLAN_FID_MASK;
 vlan4k->untag = (data[2] >> RTL8367_TA_VLAN_UNTAG1_SHIFT) &
   RTL8367_TA_VLAN_UNTAG1_MASK;
 vlan4k->untag |= ((data[3] >> RTL8367_TA_VLAN_UNTAG2_SHIFT) &
     RTL8367_TA_VLAN_UNTAG2_MASK) << 2;

 return 0;
}
