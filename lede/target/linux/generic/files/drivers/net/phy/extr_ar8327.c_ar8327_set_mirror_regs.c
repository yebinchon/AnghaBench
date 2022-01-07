
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar8xxx_priv {int source_port; int monitor_port; scalar_t__ mirror_tx; scalar_t__ mirror_rx; } ;


 int AR8327_FWD_CTRL0_MIRROR_PORT ;
 int AR8327_FWD_CTRL0_MIRROR_PORT_S ;
 int AR8327_NUM_PORTS ;
 int AR8327_PORT_HOL_CTRL1_EG_MIRROR_EN ;
 int AR8327_PORT_LOOKUP_ING_MIRROR_EN ;
 int AR8327_REG_FWD_CTRL0 ;
 int AR8327_REG_PORT_HOL_CTRL1 (int) ;
 int AR8327_REG_PORT_LOOKUP (int) ;
 int ar8xxx_reg_clear (struct ar8xxx_priv*,int ,int ) ;
 int ar8xxx_reg_set (struct ar8xxx_priv*,int ,int ) ;
 int ar8xxx_rmw (struct ar8xxx_priv*,int ,int ,int) ;

__attribute__((used)) static void
ar8327_set_mirror_regs(struct ar8xxx_priv *priv)
{
 int port;


 ar8xxx_rmw(priv, AR8327_REG_FWD_CTRL0,
     AR8327_FWD_CTRL0_MIRROR_PORT,
     (0xF << AR8327_FWD_CTRL0_MIRROR_PORT_S));
 for (port = 0; port < AR8327_NUM_PORTS; port++) {
  ar8xxx_reg_clear(priv, AR8327_REG_PORT_LOOKUP(port),
      AR8327_PORT_LOOKUP_ING_MIRROR_EN);

  ar8xxx_reg_clear(priv, AR8327_REG_PORT_HOL_CTRL1(port),
      AR8327_PORT_HOL_CTRL1_EG_MIRROR_EN);
 }


 if (priv->source_port >= AR8327_NUM_PORTS ||
     priv->monitor_port >= AR8327_NUM_PORTS ||
     priv->source_port == priv->monitor_port) {
  return;
 }

 ar8xxx_rmw(priv, AR8327_REG_FWD_CTRL0,
     AR8327_FWD_CTRL0_MIRROR_PORT,
     (priv->monitor_port << AR8327_FWD_CTRL0_MIRROR_PORT_S));

 if (priv->mirror_rx)
  ar8xxx_reg_set(priv, AR8327_REG_PORT_LOOKUP(priv->source_port),
      AR8327_PORT_LOOKUP_ING_MIRROR_EN);

 if (priv->mirror_tx)
  ar8xxx_reg_set(priv, AR8327_REG_PORT_HOL_CTRL1(priv->source_port),
      AR8327_PORT_HOL_CTRL1_EG_MIRROR_EN);
}
