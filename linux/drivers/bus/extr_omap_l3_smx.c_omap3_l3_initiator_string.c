
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static char *omap3_l3_initiator_string(u8 initid)
{
 switch (initid) {
 case 137:
  return "LCD";
 case 136:
  return "SAD2D";
 case 143:
 case 142:
 case 141:
 case 140:
 case 139:
  return "MPU";
 case 152:
 case 151:
 case 150:
  return "IVA_SS";
 case 149:
 case 148:
 case 147:
 case 146:
 case 145:
 case 144:
  return "IVA_SS_DMA";
 case 138:
  return "SGX";
 case 156:
 case 155:
 case 154:
  return "CAM";
 case 153:
  return "DAP";
 case 131:
 case 130:
  return "SDMA_WR";
 case 135:
 case 134:
 case 133:
 case 132:
  return "SDMA_RD";
 case 128:
  return "USB_OTG";
 case 129:
  return "USB_HOST";
 default:
  return "UNKNOWN Initiator";
 }
}
