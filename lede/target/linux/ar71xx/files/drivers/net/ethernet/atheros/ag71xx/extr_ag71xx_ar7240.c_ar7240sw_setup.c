
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int dummy; } ;
struct ar7240sw {struct mii_bus* mii_bus; } ;


 int AR7240_AT_CTRL_AGE_EN ;
 int AR7240_AT_CTRL_ARP_EN ;
 int AR7240_AT_CTRL_LEARN_CHANGE ;
 int AR7240_AT_CTRL_RESERVED ;
 int AR7240_CPU_PORT_EN ;
 int AR7240_FLOOD_MASK_BROAD_TO_CPU ;
 int AR7240_GLOBAL_CTRL_MTU_M ;
 int AR7240_MIRROR_PORT_S ;
 int AR7240_REG_AT_CTRL ;
 int AR7240_REG_CPU_PORT ;
 int AR7240_REG_FLOOD_MASK ;
 int AR7240_REG_GLOBAL_CTRL ;
 int AR7240_REG_MIB_FUNCTION0 ;
 int AR7240_REG_SERVICE_TAG ;
 int AR7240_REG_TAG_PRIORITY ;
 int AR7240_SERVICE_TAG_M ;
 int AR9340_GLOBAL_CTRL_MTU_M ;
 int AR934X_AT_CTRL_AGE_EN ;
 int AR934X_AT_CTRL_LEARN_CHANGE ;
 int AR934X_FLOOD_MASK_BC_DP (int ) ;
 int AR934X_FLOOD_MASK_MC_DP (int ) ;
 int AR934X_MIB_ENABLE ;
 int AR934X_QM_CTRL_ARP_EN ;
 int AR934X_REG_AT_CTRL ;
 int AR934X_REG_FLOOD_MASK ;
 int AR934X_REG_QM_CTRL ;
 int ar7240sw_reg_rmw (struct mii_bus*,int ,int ,int ) ;
 int ar7240sw_reg_set (struct mii_bus*,int ,int) ;
 int ar7240sw_reg_write (struct mii_bus*,int ,int) ;
 scalar_t__ sw_is_ar934x (struct ar7240sw*) ;

__attribute__((used)) static void ar7240sw_setup(struct ar7240sw *as)
{
 struct mii_bus *mii = as->mii_bus;


 ar7240sw_reg_write(mii, AR7240_REG_CPU_PORT,
      AR7240_CPU_PORT_EN |
      (15 << AR7240_MIRROR_PORT_S));


 ar7240sw_reg_write(mii, AR7240_REG_TAG_PRIORITY, 0xfa50);

 if (sw_is_ar934x(as)) {

  ar7240sw_reg_write(mii, AR934X_REG_AT_CTRL,
   0x2b |
   AR934X_AT_CTRL_AGE_EN |
   AR934X_AT_CTRL_LEARN_CHANGE);

  ar7240sw_reg_set(mii, AR934X_REG_QM_CTRL,
     AR934X_QM_CTRL_ARP_EN);

  ar7240sw_reg_set(mii, AR934X_REG_FLOOD_MASK,
     AR934X_FLOOD_MASK_BC_DP(0) |
     AR934X_FLOOD_MASK_MC_DP(0));


  ar7240sw_reg_rmw(mii, AR7240_REG_GLOBAL_CTRL,
     AR9340_GLOBAL_CTRL_MTU_M,
     AR9340_GLOBAL_CTRL_MTU_M);


  ar7240sw_reg_set(mii, AR7240_REG_MIB_FUNCTION0,
     AR934X_MIB_ENABLE);

 } else {

  ar7240sw_reg_write(mii, AR7240_REG_AT_CTRL,
   AR7240_AT_CTRL_RESERVED |
   0x2b |
   AR7240_AT_CTRL_AGE_EN |
   AR7240_AT_CTRL_ARP_EN |
   AR7240_AT_CTRL_LEARN_CHANGE);

  ar7240sw_reg_set(mii, AR7240_REG_FLOOD_MASK,
     AR7240_FLOOD_MASK_BROAD_TO_CPU);


  ar7240sw_reg_rmw(mii, AR7240_REG_GLOBAL_CTRL,
     AR7240_GLOBAL_CTRL_MTU_M,
     AR7240_GLOBAL_CTRL_MTU_M);
 }


 ar7240sw_reg_rmw(mii, AR7240_REG_SERVICE_TAG, AR7240_SERVICE_TAG_M, 0);
}
