
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct gsw_mt753x {int dummy; } ;


 int BIT (int) ;
 int ETAG_CTRL_TAG ;
 int ETAG_CTRL_UNTAG ;
 int IVL_MAC ;
 int MT753X_NUM_PORTS ;
 int PORT_ETAG_S (int) ;
 int PORT_MEM_M ;
 int PORT_MEM_S ;
 int VAWD1 ;
 int VAWD2 ;
 int VENTRY_VALID ;
 int VTAG_EN ;
 int VTCR_WRITE_VLAN_ENTRY ;
 int mt753x_reg_write (struct gsw_mt753x*,int ,int) ;
 int mt753x_vlan_ctrl (struct gsw_mt753x*,int ,int ) ;

__attribute__((used)) static void mt753x_write_vlan_entry(struct gsw_mt753x *gsw, int vlan, u16 vid,
        u8 ports, u8 etags)
{
 int port;
 u32 val;


 if (ports)
  mt753x_reg_write(gsw, VAWD1,
     IVL_MAC | VTAG_EN | VENTRY_VALID |
     ((ports << PORT_MEM_S) & PORT_MEM_M));
 else
  mt753x_reg_write(gsw, VAWD1, 0);


 val = 0;
 for (port = 0; port < MT753X_NUM_PORTS; port++) {
  if (etags & BIT(port))
   val |= ETAG_CTRL_TAG << PORT_ETAG_S(port);
  else
   val |= ETAG_CTRL_UNTAG << PORT_ETAG_S(port);
 }
 mt753x_reg_write(gsw, VAWD2, val);


 mt753x_vlan_ctrl(gsw, VTCR_WRITE_VLAN_ENTRY, vid);
}
