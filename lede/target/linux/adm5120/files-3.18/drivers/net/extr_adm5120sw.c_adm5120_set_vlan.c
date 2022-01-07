
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SWITCH_NUM_PORTS ;
 int SWITCH_REG_VLAN_G1 ;
 int SWITCH_REG_VLAN_G2 ;
 int ** adm5120_devs ;
 int ** adm5120_port ;
 int sw_write_reg (int ,unsigned long) ;

__attribute__((used)) static void adm5120_set_vlan(char *matrix)
{
 unsigned long val;
 int vlan_port, port;

 val = matrix[0] + (matrix[1]<<8) + (matrix[2]<<16) + (matrix[3]<<24);
 sw_write_reg(SWITCH_REG_VLAN_G1, val);
 val = matrix[4] + (matrix[5]<<8);
 sw_write_reg(SWITCH_REG_VLAN_G2, val);


 for (port = 0; port < SWITCH_NUM_PORTS; port++) {
  for (vlan_port = 0; vlan_port < SWITCH_NUM_PORTS && !(matrix[vlan_port] & (0x00000001 << port)); vlan_port++)
   ;
  if (vlan_port < SWITCH_NUM_PORTS)
   adm5120_port[port] = adm5120_devs[vlan_port];
  else
   adm5120_port[port] = ((void*)0);
 }
}
