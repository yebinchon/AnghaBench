
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct switch_dev {int dummy; } ;
struct psb6970_priv {int* vlan_table; int* vlan_id; int vlan_tagged; size_t* pvid; int reg_mutex; int phy; int (* write ) (int ,int ,int) ;scalar_t__ vlan; } ;


 int PSB6970_DVID (int) ;
 int PSB6970_EC (int) ;
 int PSB6970_EC_IFNTE ;
 int PSB6970_IS_CPU_PORT (int) ;
 int PSB6970_MAX_VLANS ;
 int PSB6970_NUM_PORTS ;
 int PSB6970_PBVM (int) ;
 int PSB6970_PBVM_AOVTP ;
 int PSB6970_PBVM_TBVE ;
 int PSB6970_PBVM_VC ;
 int PSB6970_PBVM_VMCE ;
 int PSB6970_PBVM_VSD ;
 int PSB6970_VFxH (int) ;
 int PSB6970_VFxH_TM_SHIFT ;
 int PSB6970_VFxL (int) ;
 int PSB6970_VFxL_VV ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ,int ,int) ;
 int stub2 (int ,int ,int) ;
 int stub3 (int ,int ,int) ;
 int stub4 (int ,int ,int) ;
 int stub5 (int ,int ,int) ;
 int stub6 (int ,int ,int) ;
 struct psb6970_priv* to_psb6970 (struct switch_dev*) ;

__attribute__((used)) static int psb6970_hw_apply(struct switch_dev *dev)
{
 struct psb6970_priv *priv = to_psb6970(dev);
 int i, j;

 mutex_lock(&priv->reg_mutex);

 if (priv->vlan) {

  for (j = 0; j < PSB6970_MAX_VLANS; j++) {
   u8 vp = priv->vlan_table[j];

   if (vp) {
    priv->write(priv->phy, PSB6970_VFxL(j),
         PSB6970_VFxL_VV | priv->vlan_id[j]);
    priv->write(priv->phy, PSB6970_VFxH(j),
         ((vp & priv->
           vlan_tagged) <<
          PSB6970_VFxH_TM_SHIFT) | vp);
   } else
    priv->write(priv->phy, PSB6970_VFxL(j), 0);

  }
 }


 for (i = 0; i < PSB6970_NUM_PORTS; i++) {
  int dvid = 1, pbvm = 0x7f | PSB6970_PBVM_VSD, ec = 0;

  if (priv->vlan) {
   ec = PSB6970_EC_IFNTE;
   dvid = priv->vlan_id[priv->pvid[i]];
   pbvm |= PSB6970_PBVM_TBVE | PSB6970_PBVM_VMCE;

   if ((i << 1) & priv->vlan_tagged)
    pbvm |= PSB6970_PBVM_AOVTP | PSB6970_PBVM_VC;
  }

  priv->write(priv->phy, PSB6970_PBVM(i), pbvm);

  if (!PSB6970_IS_CPU_PORT(i)) {
   priv->write(priv->phy, PSB6970_EC(i), ec);
   priv->write(priv->phy, PSB6970_DVID(i), dvid);
  }
 }

 mutex_unlock(&priv->reg_mutex);
 return 0;
}
