
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static char *omap3_l3_code_string(u8 code)
{
 switch (code) {
 case 132:
  return "No Error";
 case 128:
  return "Unsupported Command";
 case 134:
  return "Address Hole";
 case 131:
  return "Protection Violation";
 case 133:
  return "In-band Error";
 case 130:
  return "Request Timeout Not Accepted";
 case 129:
  return "Request Timeout, no response";
 default:
  return "UNKNOWN error";
 }
}
