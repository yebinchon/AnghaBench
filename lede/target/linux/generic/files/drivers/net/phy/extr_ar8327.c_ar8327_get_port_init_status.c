
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar8327_port_cfg {int speed; scalar_t__ txpause; scalar_t__ rxpause; scalar_t__ duplex; int force_link; } ;


 int AR8216_PORT_SPEED_1000M ;
 int AR8216_PORT_SPEED_100M ;
 int AR8216_PORT_SPEED_10M ;
 int AR8216_PORT_STATUS_DUPLEX ;
 int AR8216_PORT_STATUS_LINK_AUTO ;
 int AR8216_PORT_STATUS_RXFLOW ;
 int AR8216_PORT_STATUS_RXMAC ;
 int AR8216_PORT_STATUS_TXFLOW ;
 int AR8216_PORT_STATUS_TXMAC ;




__attribute__((used)) static u32
ar8327_get_port_init_status(struct ar8327_port_cfg *cfg)
{
 u32 t;

 if (!cfg->force_link)
  return AR8216_PORT_STATUS_LINK_AUTO;

 t = AR8216_PORT_STATUS_TXMAC | AR8216_PORT_STATUS_RXMAC;
 t |= cfg->duplex ? AR8216_PORT_STATUS_DUPLEX : 0;
 t |= cfg->rxpause ? AR8216_PORT_STATUS_RXFLOW : 0;
 t |= cfg->txpause ? AR8216_PORT_STATUS_TXFLOW : 0;

 switch (cfg->speed) {
 case 130:
  t |= AR8216_PORT_SPEED_10M;
  break;
 case 129:
  t |= AR8216_PORT_SPEED_100M;
  break;
 case 128:
  t |= AR8216_PORT_SPEED_1000M;
  break;
 }

 return t;
}
