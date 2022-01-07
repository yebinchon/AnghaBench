
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl8366_vlan_mc {unsigned int vid; scalar_t__ member; int fid; int untag; } ;
struct rtl8366_vlan_4k {scalar_t__ member; int fid; int untag; } ;
struct rtl8366_smi {int num_vlan_mc; int parent; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_vlan_mc ) (struct rtl8366_smi*,int,struct rtl8366_vlan_mc*) ;int (* set_vlan_mc ) (struct rtl8366_smi*,int,struct rtl8366_vlan_mc*) ;int (* set_mc_index ) (struct rtl8366_smi*,unsigned int,int) ;int (* get_vlan_4k ) (struct rtl8366_smi*,unsigned int,struct rtl8366_vlan_4k*) ;} ;


 int ENOSPC ;
 int dev_err (int ,char*) ;
 int rtl8366_mc_is_used (struct rtl8366_smi*,int,int*) ;
 int stub1 (struct rtl8366_smi*,int,struct rtl8366_vlan_mc*) ;
 int stub10 (struct rtl8366_smi*,unsigned int,int) ;
 int stub2 (struct rtl8366_smi*,int,struct rtl8366_vlan_mc*) ;
 int stub3 (struct rtl8366_smi*,unsigned int,int) ;
 int stub4 (struct rtl8366_smi*,int,struct rtl8366_vlan_mc*) ;
 int stub5 (struct rtl8366_smi*,unsigned int,struct rtl8366_vlan_4k*) ;
 int stub6 (struct rtl8366_smi*,int,struct rtl8366_vlan_mc*) ;
 int stub7 (struct rtl8366_smi*,unsigned int,int) ;
 int stub8 (struct rtl8366_smi*,unsigned int,struct rtl8366_vlan_4k*) ;
 int stub9 (struct rtl8366_smi*,int,struct rtl8366_vlan_mc*) ;

__attribute__((used)) static int rtl8366_set_pvid(struct rtl8366_smi *smi, unsigned port,
       unsigned vid)
{
 struct rtl8366_vlan_mc vlanmc;
 struct rtl8366_vlan_4k vlan4k;
 int err;
 int i;


 for (i = 0; i < smi->num_vlan_mc; i++) {
  err = smi->ops->get_vlan_mc(smi, i, &vlanmc);
  if (err)
   return err;

  if (vid == vlanmc.vid) {
   err = smi->ops->set_vlan_mc(smi, i, &vlanmc);
   if (err)
    return err;

   err = smi->ops->set_mc_index(smi, port, i);
   return err;
  }
 }


 for (i = 0; i < smi->num_vlan_mc; i++) {
  err = smi->ops->get_vlan_mc(smi, i, &vlanmc);
  if (err)
   return err;

  if (vlanmc.vid == 0 && vlanmc.member == 0) {

   err = smi->ops->get_vlan_4k(smi, vid, &vlan4k);
   if (err)
    return err;

   vlanmc.vid = vid;
   vlanmc.member = vlan4k.member;
   vlanmc.untag = vlan4k.untag;
   vlanmc.fid = vlan4k.fid;
   err = smi->ops->set_vlan_mc(smi, i, &vlanmc);
   if (err)
    return err;

   err = smi->ops->set_mc_index(smi, port, i);
   return err;
  }
 }


 for (i = 0; i < smi->num_vlan_mc; i++) {
  int used;

  err = rtl8366_mc_is_used(smi, i, &used);
  if (err)
   return err;

  if (!used) {

   err = smi->ops->get_vlan_4k(smi, vid, &vlan4k);
   if (err)
    return err;

   vlanmc.vid = vid;
   vlanmc.member = vlan4k.member;
   vlanmc.untag = vlan4k.untag;
   vlanmc.fid = vlan4k.fid;
   err = smi->ops->set_vlan_mc(smi, i, &vlanmc);
   if (err)
    return err;

   err = smi->ops->set_mc_index(smi, port, i);
   return err;
  }
 }

 dev_err(smi->parent,
  "all VLAN member configurations are in use\n");

 return -ENOSPC;
}
