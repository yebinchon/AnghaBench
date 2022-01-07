
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar8xxx_priv {struct ar8327_data* chip_data; } ;
struct ar8327_data {int port0_status; int port6_status; } ;


 int AR8216_PORT_CPU ;
 int AR8216_PORT_STATE_FORWARD ;
 int AR8216_PORT_STATUS_FLOW_CONTROL ;
 int AR8216_PORT_STATUS_LINK_AUTO ;
 int AR8327_PORT_LOOKUP_LEARN ;
 int AR8327_PORT_LOOKUP_STATE_S ;
 int AR8327_PORT_VLAN1_OUT_MODE_S ;
 int AR8327_PORT_VLAN1_OUT_MODE_UNTOUCH ;
 int AR8327_REG_PORT_HEADER (int) ;
 int AR8327_REG_PORT_LOOKUP (int) ;
 int AR8327_REG_PORT_STATUS (int) ;
 int AR8327_REG_PORT_VLAN0 (int) ;
 int AR8327_REG_PORT_VLAN1 (int) ;
 int ar8xxx_write (struct ar8xxx_priv*,int ,int) ;
 int msleep (int) ;

__attribute__((used)) static void
ar8327_init_port(struct ar8xxx_priv *priv, int port)
{
 struct ar8327_data *data = priv->chip_data;
 u32 t;

 if (port == AR8216_PORT_CPU)
  t = data->port0_status;
 else if (port == 6)
  t = data->port6_status;
 else
  t = AR8216_PORT_STATUS_LINK_AUTO;

 if (port != AR8216_PORT_CPU && port != 6) {


  ar8xxx_write(priv, AR8327_REG_PORT_STATUS(port), 0);
  msleep(100);
  t |= AR8216_PORT_STATUS_FLOW_CONTROL;
  ar8xxx_write(priv, AR8327_REG_PORT_STATUS(port), t);
 } else {
  ar8xxx_write(priv, AR8327_REG_PORT_STATUS(port), t);
 }

 ar8xxx_write(priv, AR8327_REG_PORT_HEADER(port), 0);

 ar8xxx_write(priv, AR8327_REG_PORT_VLAN0(port), 0);

 t = AR8327_PORT_VLAN1_OUT_MODE_UNTOUCH << AR8327_PORT_VLAN1_OUT_MODE_S;
 ar8xxx_write(priv, AR8327_REG_PORT_VLAN1(port), t);

 t = AR8327_PORT_LOOKUP_LEARN;
 t |= AR8216_PORT_STATE_FORWARD << AR8327_PORT_LOOKUP_STATE_S;
 ar8xxx_write(priv, AR8327_REG_PORT_LOOKUP(port), t);
}
