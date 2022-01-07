
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct switch_dev {int ports; int vlans; } ;
struct mvsw61xx_state {scalar_t__ model; int mirror_rx; int mirror_tx; scalar_t__ monitor_port; scalar_t__ source_port; scalar_t__ vlan_enabled; TYPE_2__* vlans; TYPE_1__* ports; } ;
struct TYPE_4__ {int port_based; scalar_t__ port_sstate; scalar_t__ port_mode; scalar_t__ vid; scalar_t__ mask; } ;
struct TYPE_3__ {scalar_t__ pvid; scalar_t__ mask; scalar_t__ qmode; scalar_t__ fdb; } ;


 int ASSOC ;
 int BMCR_ANENABLE ;
 int BMCR_FULLDPLX ;
 int BMCR_RESET ;
 int BMCR_SPEED1000 ;
 int CONTROL ;
 int ETIMEDOUT ;
 int MII_BMCR ;
 int MII_MV_SPEC_CTRL ;
 scalar_t__ MV_CONTROL_RESET ;
 int MV_GLOBALREG (int ) ;
 scalar_t__ MV_IDENT_VALUE_6176 ;
 scalar_t__ MV_PHYCTL_FC_DISABLE ;
 scalar_t__ MV_PHYCTL_FC_MASK ;
 scalar_t__ MV_PORTCTRL_FORWARDING ;
 int MV_PORTREG (int ,int) ;
 scalar_t__ MV_PORT_STATUS_CMODE_1000BASE_X ;
 scalar_t__ MV_PORT_STATUS_CMODE_100BASE_X ;
 scalar_t__ MV_PORT_STATUS_CMODE_MASK ;
 scalar_t__ MV_PORT_STATUS_CMODE_SGMII ;
 int MV_SPEC_DOWNSHIFT_COUNTER ;
 int MV_SPEC_ENERGY_DETECT ;
 int MV_SPEC_MDI_CROSS_AUTO ;
 int PHYCTL ;
 int STATUS ;
 struct mvsw61xx_state* get_state (struct switch_dev*) ;
 int mvsw61xx_enable_serdes (struct switch_dev*) ;
 int mvsw61xx_mdio_write (struct switch_dev*,int,int ,int) ;
 int mvsw61xx_update_state (struct switch_dev*) ;
 scalar_t__ mvsw61xx_wait_mask_s (struct switch_dev*,int ,scalar_t__,int ) ;
 scalar_t__ sr16 (struct switch_dev*,int ) ;
 int sw16 (struct switch_dev*,int ,scalar_t__) ;

__attribute__((used)) static int _mvsw61xx_reset(struct switch_dev *dev, bool full)
{
 struct mvsw61xx_state *state = get_state(dev);
 int i;
 u16 reg;


 for (i = 0; i < dev->ports; i++) {
  reg = sr16(dev, MV_PORTREG(CONTROL, i)) &
   ~MV_PORTCTRL_FORWARDING;
  sw16(dev, MV_PORTREG(CONTROL, i), reg);
 }

 reg = sr16(dev, MV_GLOBALREG(CONTROL)) | MV_CONTROL_RESET;

 sw16(dev, MV_GLOBALREG(CONTROL), reg);
 if (mvsw61xx_wait_mask_s(dev, MV_GLOBALREG(CONTROL),
    MV_CONTROL_RESET, 0) < 0)
  return -ETIMEDOUT;

 for (i = 0; i < dev->ports; i++) {
  state->ports[i].fdb = 0;
  state->ports[i].qmode = 0;
  state->ports[i].mask = 0;
  state->ports[i].pvid = 0;


  reg = sr16(dev, MV_PORTREG(PHYCTL, i)) & ~MV_PHYCTL_FC_MASK;
  reg |= MV_PHYCTL_FC_DISABLE;
  sw16(dev, MV_PORTREG(PHYCTL, i), reg);


  sw16(dev, MV_PORTREG(ASSOC, i), (1 << i));


  if (full && i < 5) {
   mvsw61xx_mdio_write(dev, i, MII_MV_SPEC_CTRL,
         MV_SPEC_MDI_CROSS_AUTO |
         MV_SPEC_ENERGY_DETECT |
         MV_SPEC_DOWNSHIFT_COUNTER);
   mvsw61xx_mdio_write(dev, i, MII_BMCR, BMCR_RESET |
         BMCR_ANENABLE | BMCR_FULLDPLX |
         BMCR_SPEED1000);
  }


  if (full && i >= 5 && state->model == MV_IDENT_VALUE_6176) {
   u16 sts = sr16(dev, MV_PORTREG(STATUS, i));
   u16 mode = sts & MV_PORT_STATUS_CMODE_MASK;

   if (mode == MV_PORT_STATUS_CMODE_100BASE_X ||
       mode == MV_PORT_STATUS_CMODE_1000BASE_X ||
       mode == MV_PORT_STATUS_CMODE_SGMII) {
    mvsw61xx_enable_serdes(dev);
   }
  }
 }

 for (i = 0; i < dev->vlans; i++) {
  state->vlans[i].port_based = 0;
  state->vlans[i].mask = 0;
  state->vlans[i].vid = 0;
  state->vlans[i].port_mode = 0;
  state->vlans[i].port_sstate = 0;
 }

 state->vlan_enabled = 0;

 state->mirror_rx = 0;
 state->mirror_tx = 0;
 state->source_port = 0;
 state->monitor_port = 0;

 mvsw61xx_update_state(dev);


 for (i = 0; i < dev->ports; i++) {
  reg = sr16(dev, MV_PORTREG(CONTROL, i)) |
   MV_PORTCTRL_FORWARDING;
  sw16(dev, MV_PORTREG(CONTROL, i), reg);
 }

 return 0;
}
