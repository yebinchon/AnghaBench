
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct rtl8366_vlan_mc {int vid; void* fid; void* untag; void* member; } ;
struct rtl8366_vlan_4k {void* fid; void* untag; void* member; } ;
struct rtl8366_smi {int num_vlan_mc; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_vlan_4k ) (struct rtl8366_smi*,int,struct rtl8366_vlan_4k*) ;int (* set_vlan_4k ) (struct rtl8366_smi*,struct rtl8366_vlan_4k*) ;int (* get_vlan_mc ) (struct rtl8366_smi*,int,struct rtl8366_vlan_mc*) ;int (* set_vlan_mc ) (struct rtl8366_smi*,int,struct rtl8366_vlan_mc*) ;} ;


 int stub1 (struct rtl8366_smi*,int,struct rtl8366_vlan_4k*) ;
 int stub2 (struct rtl8366_smi*,struct rtl8366_vlan_4k*) ;
 int stub3 (struct rtl8366_smi*,int,struct rtl8366_vlan_mc*) ;
 int stub4 (struct rtl8366_smi*,int,struct rtl8366_vlan_mc*) ;

__attribute__((used)) static int rtl8366_set_vlan(struct rtl8366_smi *smi, int vid, u32 member,
       u32 untag, u32 fid)
{
 struct rtl8366_vlan_4k vlan4k;
 int err;
 int i;


 err = smi->ops->get_vlan_4k(smi, vid, &vlan4k);
 if (err)
  return err;

 vlan4k.member = member;
 vlan4k.untag = untag;
 vlan4k.fid = fid;
 err = smi->ops->set_vlan_4k(smi, &vlan4k);
 if (err)
  return err;


 for (i = 0; i < smi->num_vlan_mc; i++) {
  struct rtl8366_vlan_mc vlanmc;

  err = smi->ops->get_vlan_mc(smi, i, &vlanmc);
  if (err)
   return err;

  if (vid == vlanmc.vid) {

   vlanmc.member = member;
   vlanmc.untag = untag;
   vlanmc.fid = fid;

   err = smi->ops->set_vlan_mc(smi, i, &vlanmc);
   break;
  }
 }

 return err;
}
