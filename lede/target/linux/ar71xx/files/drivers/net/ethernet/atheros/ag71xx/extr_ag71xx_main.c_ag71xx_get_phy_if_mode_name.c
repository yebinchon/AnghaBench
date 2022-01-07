
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phy_interface_t ;
__attribute__((used)) static const char *ag71xx_get_phy_if_mode_name(phy_interface_t mode)
{
 switch (mode) {
 case 131:
  return "MII";
 case 132:
  return "GMII";
 case 129:
  return "RMII";
 case 130:
  return "RGMII";
 case 128:
  return "SGMII";
 default:
  break;
 }

 return "unknown";
}
