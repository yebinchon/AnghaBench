
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar8xxx_priv {int dummy; } ;


 int AR8216_PORT_STATUS_LINK_AUTO ;
 int AR8216_PORT_STATUS_LINK_UP ;
 int AR8216_PORT_STATUS_RXFLOW ;
 int AR8216_PORT_STATUS_TXFLOW ;
 int AR8327_PORT_STATUS_RXFLOW_AUTO ;
 int AR8327_PORT_STATUS_TXFLOW_AUTO ;
 int AR8327_REG_PORT_STATUS (int) ;
 int ar8xxx_read (struct ar8xxx_priv*,int ) ;

__attribute__((used)) static u32
ar8327_read_port_status(struct ar8xxx_priv *priv, int port)
{
 u32 t;

 t = ar8xxx_read(priv, AR8327_REG_PORT_STATUS(port));




 if (t & AR8216_PORT_STATUS_LINK_UP &&
     t & AR8216_PORT_STATUS_LINK_AUTO) {
  t &= ~(AR8216_PORT_STATUS_TXFLOW | AR8216_PORT_STATUS_RXFLOW);
  if (t & AR8327_PORT_STATUS_TXFLOW_AUTO)
   t |= AR8216_PORT_STATUS_TXFLOW;
  if (t & AR8327_PORT_STATUS_RXFLOW_AUTO)
   t |= AR8216_PORT_STATUS_RXFLOW;
 }

 return t;
}
