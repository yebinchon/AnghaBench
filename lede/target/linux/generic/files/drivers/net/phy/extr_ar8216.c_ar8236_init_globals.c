
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar8xxx_priv {int dummy; } ;


 int AR8216_MIB_FUNC ;
 int AR8216_MIB_FUNC_NO_OP ;
 int AR8216_MIB_FUNC_S ;
 int AR8216_REG_ATU_CTRL ;
 int AR8216_REG_FLOOD_MASK ;
 int AR8216_REG_GLOBAL_CTRL ;
 int AR8216_REG_MIB_FUNC ;
 int AR8236_ATU_CTRL_RES ;
 int AR8236_FM_CPU_BCAST_FWD_EN ;
 int AR8236_FM_CPU_BROADCAST_EN ;
 int AR8236_MIB_EN ;
 int AR8316_GCTRL_MTU ;
 int ar8xxx_reg_set (struct ar8xxx_priv*,int ,int) ;
 int ar8xxx_rmw (struct ar8xxx_priv*,int ,int,int) ;

__attribute__((used)) static void
ar8236_init_globals(struct ar8xxx_priv *priv)
{

 ar8xxx_rmw(priv, AR8216_REG_GLOBAL_CTRL,
     AR8316_GCTRL_MTU, 9018 + 8 + 2);


 ar8xxx_reg_set(priv, AR8216_REG_ATU_CTRL,
     AR8236_ATU_CTRL_RES);


 ar8xxx_reg_set(priv, AR8216_REG_FLOOD_MASK,
     AR8236_FM_CPU_BROADCAST_EN | AR8236_FM_CPU_BCAST_FWD_EN);


 ar8xxx_rmw(priv, AR8216_REG_MIB_FUNC, AR8216_MIB_FUNC | AR8236_MIB_EN,
     (AR8216_MIB_FUNC_NO_OP << AR8216_MIB_FUNC_S) |
     AR8236_MIB_EN);
}
