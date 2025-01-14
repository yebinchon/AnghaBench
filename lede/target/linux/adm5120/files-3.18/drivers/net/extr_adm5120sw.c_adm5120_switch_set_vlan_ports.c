
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int SWITCH_REG_VLAN_G1 ;
 unsigned int SWITCH_REG_VLAN_G2 ;
 int sw_read_reg (unsigned int) ;
 int sw_write_reg (unsigned int,int) ;

__attribute__((used)) static void adm5120_switch_set_vlan_ports(unsigned int vlan, u32 ports)
{
 unsigned int reg;
 u32 t;

 if (vlan < 4)
  reg = SWITCH_REG_VLAN_G1;
 else {
  vlan -= 4;
  reg = SWITCH_REG_VLAN_G2;
 }

 t = sw_read_reg(reg);
 t &= ~(0xFF << (vlan*8));
 t |= (ports << (vlan*8));
 sw_write_reg(reg, t);
}
