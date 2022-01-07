
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rt305x_esw {int reg_initval_fct2; int reg_initval_fpa2; int port_disable; int reg_led_polarity; int port_map; int swdev; TYPE_1__* ports; } ;
struct TYPE_2__ {int disable; int led; } ;


 int BMCR_ANENABLE ;
 int BMCR_FULLDPLX ;
 int BMCR_PDOWN ;
 int BMCR_SPEED100 ;
 int MII_BMCR ;
 scalar_t__ MT762X_SOC_MT7628AN ;
 scalar_t__ MT762X_SOC_MT7688 ;
 int RT305X_ESW_NUM_LEDS ;
 int RT305X_ESW_PFC1_EN_VLAN_S ;
 int RT305X_ESW_PMAP_LLLLLL ;
 int RT305X_ESW_POC0_EN_BP_S ;
 int RT305X_ESW_POC0_EN_FC_S ;
 int RT305X_ESW_POC2_ENAGING_S ;
 int RT305X_ESW_POC2_UNTAG_EN_S ;
 int RT305X_ESW_PORTS_ALL ;
 int RT305X_ESW_PORTS_CPU ;
 int RT305X_ESW_PORTS_NOCPU ;
 int RT305X_ESW_PORT_ST_CHG ;
 int RT305X_ESW_REG_FCT0 ;
 int RT305X_ESW_REG_FCT2 ;
 int RT305X_ESW_REG_FPA ;
 int RT305X_ESW_REG_FPA2 ;
 int RT305X_ESW_REG_IMR ;
 int RT305X_ESW_REG_P0LED ;
 int RT305X_ESW_REG_P1LED ;
 int RT305X_ESW_REG_P2LED ;
 int RT305X_ESW_REG_P3LED ;
 int RT305X_ESW_REG_P4LED ;
 int RT305X_ESW_REG_PFC1 ;
 int RT305X_ESW_REG_POC0 ;
 int RT305X_ESW_REG_POC2 ;
 int RT305X_ESW_REG_SGC ;
 int RT305X_ESW_REG_SGC2 ;
 int RT305X_ESW_REG_SOCPC ;
 int RT305X_ESW_SGC2_LAN_PMAP_M ;
 int RT305X_ESW_SGC2_LAN_PMAP_S ;
 int RT305X_ESW_SOCPC_CRC_PADDING ;
 int RT305X_ESW_SOCPC_DISBC2CPU_S ;
 int RT305X_ESW_SOCPC_DISMC2CPU_S ;
 int RT305X_ESW_SOCPC_DISUN2CPU_S ;
 scalar_t__ RT305X_SOC_RT3352 ;
 scalar_t__ RT305X_SOC_RT5350 ;
 int RT5350_EWS_REG_LED_POLARITY ;
 int RT5350_RESET_EPHY ;
 int esw_apply_config (int *) ;
 int esw_get_port_disable (struct rt305x_esw*) ;
 int esw_rmw (struct rt305x_esw*,int ,int,int) ;
 int esw_w32 (struct rt305x_esw*,int,int ) ;
 int fe_reset (int ) ;
 scalar_t__ ralink_soc ;
 int rt305x_mii_write (struct rt305x_esw*,int,int,int) ;

__attribute__((used)) static void esw_hw_init(struct rt305x_esw *esw)
{
 int i;
 u8 port_disable = 0;
 u8 port_map = RT305X_ESW_PMAP_LLLLLL;


 esw_w32(esw, 0xC8A07850, RT305X_ESW_REG_FCT0);
 esw_w32(esw, 0x00000000, RT305X_ESW_REG_SGC2);

 esw_w32(esw, 0x00005555 |
       (RT305X_ESW_PORTS_ALL << RT305X_ESW_PFC1_EN_VLAN_S),
  RT305X_ESW_REG_PFC1);


 esw_w32(esw, ((RT305X_ESW_PORTS_ALL << RT305X_ESW_POC0_EN_BP_S) |
        (RT305X_ESW_PORTS_ALL << RT305X_ESW_POC0_EN_FC_S)),
  RT305X_ESW_REG_POC0);


 esw_w32(esw, ((RT305X_ESW_PORTS_ALL << RT305X_ESW_POC2_ENAGING_S) |
        (RT305X_ESW_PORTS_NOCPU << RT305X_ESW_POC2_UNTAG_EN_S)),
  RT305X_ESW_REG_POC2);

 if (esw->reg_initval_fct2)
  esw_w32(esw, esw->reg_initval_fct2, RT305X_ESW_REG_FCT2);
 else
  esw_w32(esw, 0x0002500c, RT305X_ESW_REG_FCT2);







 esw_w32(esw, 0x0008a301, RT305X_ESW_REG_SGC);


 esw_w32(esw,
  (RT305X_ESW_SOCPC_CRC_PADDING |
  (RT305X_ESW_PORTS_CPU << RT305X_ESW_SOCPC_DISUN2CPU_S) |
  (RT305X_ESW_PORTS_CPU << RT305X_ESW_SOCPC_DISMC2CPU_S) |
  (RT305X_ESW_PORTS_CPU << RT305X_ESW_SOCPC_DISBC2CPU_S)),
  RT305X_ESW_REG_SOCPC);






 if (esw->reg_initval_fpa2)
  esw_w32(esw, esw->reg_initval_fpa2, RT305X_ESW_REG_FPA2);
 else
  esw_w32(esw, 0x3f502b28, RT305X_ESW_REG_FPA2);
 esw_w32(esw, 0x00000000, RT305X_ESW_REG_FPA);


 esw_w32(esw, 0x00000005, RT305X_ESW_REG_P0LED);
 esw_w32(esw, 0x00000005, RT305X_ESW_REG_P1LED);
 esw_w32(esw, 0x00000005, RT305X_ESW_REG_P2LED);
 esw_w32(esw, 0x00000005, RT305X_ESW_REG_P3LED);
 esw_w32(esw, 0x00000005, RT305X_ESW_REG_P4LED);


 port_disable = esw->port_disable;




 port_disable |= esw_get_port_disable(esw);

 for (i = 0; i < 6; i++)
  esw->ports[i].disable = (port_disable & (1 << i)) != 0;

 if (ralink_soc == RT305X_SOC_RT3352) {

  fe_reset(RT5350_RESET_EPHY);

  rt305x_mii_write(esw, 0, 31, 0x8000);
  for (i = 0; i < 5; i++) {
   if (esw->ports[i].disable) {
    rt305x_mii_write(esw, i, MII_BMCR, BMCR_PDOWN);
   } else {
    rt305x_mii_write(esw, i, MII_BMCR,
       BMCR_FULLDPLX |
       BMCR_ANENABLE |
       BMCR_SPEED100);
   }

   rt305x_mii_write(esw, i, 26, 0x1601);

   rt305x_mii_write(esw, i, 29, 0x7016);

   rt305x_mii_write(esw, i, 30, 0x0038);
  }


  rt305x_mii_write(esw, 0, 31, 0x0);

  rt305x_mii_write(esw, 0, 1, 0x4a40);

  rt305x_mii_write(esw, 0, 2, 0x6254);

  rt305x_mii_write(esw, 0, 3, 0xa17f);
  rt305x_mii_write(esw, 0, 12, 0x7eaa);

  rt305x_mii_write(esw, 0, 14, 0x65);

  rt305x_mii_write(esw, 0, 16, 0x0684);

  rt305x_mii_write(esw, 0, 17, 0x0fe0);

  rt305x_mii_write(esw, 0, 18, 0x40ba);



  rt305x_mii_write(esw, 0, 22, 0x253f);

  rt305x_mii_write(esw, 0, 27, 0x2fda);

  rt305x_mii_write(esw, 0, 28, 0xc410);

  rt305x_mii_write(esw, 0, 29, 0x598b);

  rt305x_mii_write(esw, 0, 31, 0x8000);
 } else if (ralink_soc == RT305X_SOC_RT5350) {

  fe_reset(RT5350_RESET_EPHY);


  esw_w32(esw, esw->reg_led_polarity & 0x1F,
   RT5350_EWS_REG_LED_POLARITY);


  rt305x_mii_write(esw, 0, 31, 0x8000);
  for (i = 0; i < 5; i++) {
   if (esw->ports[i].disable) {
    rt305x_mii_write(esw, i, MII_BMCR, BMCR_PDOWN);
   } else {
    rt305x_mii_write(esw, i, MII_BMCR,
       BMCR_FULLDPLX |
       BMCR_ANENABLE |
       BMCR_SPEED100);
   }

   rt305x_mii_write(esw, i, 26, 0x1601);

   rt305x_mii_write(esw, i, 29, 0x7015);

   rt305x_mii_write(esw, i, 30, 0x0038);
  }


  rt305x_mii_write(esw, 0, 31, 0x0);

  rt305x_mii_write(esw, 0, 1, 0x4a40);

  rt305x_mii_write(esw, 0, 2, 0x6254);

  rt305x_mii_write(esw, 0, 3, 0xa17f);
  rt305x_mii_write(esw, 0, 12, 0x7eaa);

  rt305x_mii_write(esw, 0, 14, 0x65);

  rt305x_mii_write(esw, 0, 16, 0x0684);

  rt305x_mii_write(esw, 0, 17, 0x0fe0);

  rt305x_mii_write(esw, 0, 18, 0x40ba);



  rt305x_mii_write(esw, 0, 22, 0x253f);

  rt305x_mii_write(esw, 0, 27, 0x2fda);

  rt305x_mii_write(esw, 0, 28, 0xc410);

  rt305x_mii_write(esw, 0, 29, 0x598b);

  rt305x_mii_write(esw, 0, 31, 0x8000);
 } else if (ralink_soc == MT762X_SOC_MT7628AN || ralink_soc == MT762X_SOC_MT7688) {
  int i;


  fe_reset(RT5350_RESET_EPHY);

  rt305x_mii_write(esw, 0, 31, 0x2000);
  rt305x_mii_write(esw, 0, 26, 0x0020);

  for (i = 0; i < 5; i++) {
   rt305x_mii_write(esw, i, 31, 0x8000);
   rt305x_mii_write(esw, i, 0, 0x3100);
   rt305x_mii_write(esw, i, 30, 0xa000);
   rt305x_mii_write(esw, i, 31, 0xa000);
   rt305x_mii_write(esw, i, 16, 0x0606);
   rt305x_mii_write(esw, i, 23, 0x0f0e);
   rt305x_mii_write(esw, i, 24, 0x1610);
   rt305x_mii_write(esw, i, 30, 0x1f15);
   rt305x_mii_write(esw, i, 28, 0x6111);
   rt305x_mii_write(esw, i, 31, 0x2000);
   rt305x_mii_write(esw, i, 26, 0x0000);
  }


  rt305x_mii_write(esw, 0, 31, 0x5000);
  rt305x_mii_write(esw, 0, 19, 0x004a);
  rt305x_mii_write(esw, 0, 20, 0x015a);
  rt305x_mii_write(esw, 0, 21, 0x00ee);
  rt305x_mii_write(esw, 0, 22, 0x0033);
  rt305x_mii_write(esw, 0, 23, 0x020a);
  rt305x_mii_write(esw, 0, 24, 0x0000);
  rt305x_mii_write(esw, 0, 25, 0x024a);
  rt305x_mii_write(esw, 0, 26, 0x035a);
  rt305x_mii_write(esw, 0, 27, 0x02ee);
  rt305x_mii_write(esw, 0, 28, 0x0233);
  rt305x_mii_write(esw, 0, 29, 0x000a);
  rt305x_mii_write(esw, 0, 30, 0x0000);
 } else {
  rt305x_mii_write(esw, 0, 31, 0x8000);
  for (i = 0; i < 5; i++) {
   if (esw->ports[i].disable) {
    rt305x_mii_write(esw, i, MII_BMCR, BMCR_PDOWN);
   } else {
    rt305x_mii_write(esw, i, MII_BMCR,
       BMCR_FULLDPLX |
       BMCR_ANENABLE |
       BMCR_SPEED100);
   }

   rt305x_mii_write(esw, i, 26, 0x1601);

   rt305x_mii_write(esw, i, 29, 0x7058);

   rt305x_mii_write(esw, i, 30, 0x0018);
  }



  rt305x_mii_write(esw, 0, 31, 0x0);

  rt305x_mii_write(esw, 0, 22, 0x052f);

  rt305x_mii_write(esw, 0, 17, 0x0fe0);

  rt305x_mii_write(esw, 0, 18, 0x40ba);

  rt305x_mii_write(esw, 0, 14, 0x65);

  rt305x_mii_write(esw, 0, 31, 0x8000);
 }

 if (esw->port_map)
  port_map = esw->port_map;
 else
  port_map = RT305X_ESW_PMAP_LLLLLL;






 esw_rmw(esw, RT305X_ESW_REG_SGC2,
  RT305X_ESW_SGC2_LAN_PMAP_M << RT305X_ESW_SGC2_LAN_PMAP_S,
  port_map << RT305X_ESW_SGC2_LAN_PMAP_S);


 for (i = 0; i < RT305X_ESW_NUM_LEDS; i++)
  esw->ports[i].led = 0x05;


 esw_apply_config(&esw->swdev);


 esw_w32(esw, ~RT305X_ESW_PORT_ST_CHG, RT305X_ESW_REG_IMR);
}
