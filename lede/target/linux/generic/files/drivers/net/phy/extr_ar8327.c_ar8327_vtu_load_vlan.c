
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ar8xxx_priv {scalar_t__ vlan; scalar_t__ vlan_tagged; scalar_t__* vlan_id; size_t* pvid; } ;


 int AR8327_NUM_PORTS ;
 scalar_t__ AR8327_VTU_FUNC0_EG_MODE_KEEP ;
 scalar_t__ AR8327_VTU_FUNC0_EG_MODE_NOT ;
 scalar_t__ AR8327_VTU_FUNC0_EG_MODE_S (int) ;
 scalar_t__ AR8327_VTU_FUNC0_EG_MODE_TAG ;
 scalar_t__ AR8327_VTU_FUNC0_EG_MODE_UNTAG ;
 scalar_t__ AR8327_VTU_FUNC0_IVL ;
 scalar_t__ AR8327_VTU_FUNC0_VALID ;
 scalar_t__ AR8327_VTU_FUNC1_OP_LOAD ;
 scalar_t__ AR8327_VTU_FUNC1_VID_S ;
 scalar_t__ BIT (int) ;
 int ar8327_vtu_op (struct ar8xxx_priv*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
ar8327_vtu_load_vlan(struct ar8xxx_priv *priv, u32 vid, u32 port_mask)
{
 u32 op;
 u32 val;
 int i;

 op = AR8327_VTU_FUNC1_OP_LOAD | (vid << AR8327_VTU_FUNC1_VID_S);
 val = AR8327_VTU_FUNC0_VALID | AR8327_VTU_FUNC0_IVL;
 for (i = 0; i < AR8327_NUM_PORTS; i++) {
  u32 mode;

  if ((port_mask & BIT(i)) == 0)
   mode = AR8327_VTU_FUNC0_EG_MODE_NOT;
  else if (priv->vlan == 0)
   mode = AR8327_VTU_FUNC0_EG_MODE_KEEP;
  else if ((priv->vlan_tagged & BIT(i)) || (priv->vlan_id[priv->pvid[i]] != vid))
   mode = AR8327_VTU_FUNC0_EG_MODE_TAG;
  else
   mode = AR8327_VTU_FUNC0_EG_MODE_UNTAG;

  val |= mode << AR8327_VTU_FUNC0_EG_MODE_S(i);
 }
 ar8327_vtu_op(priv, op, val);
}
