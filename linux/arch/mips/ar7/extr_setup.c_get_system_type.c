
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
 int ar7_chip_id () ;
 int titan_chip_id () ;

const char *get_system_type(void)
{
 u16 chip_id = ar7_chip_id();
 u16 titan_variant_id = titan_chip_id();

 switch (chip_id) {
 case 135:
  return "TI AR7 (TNETD7100)";
 case 134:
  return "TI AR7 (TNETD7200)";
 case 133:
  return "TI AR7 (TNETD7300)";
 case 132:
  switch (titan_variant_id) {
  case 131:
   return "TI AR7 (TNETV1050)";
  case 130:
   return "TI AR7 (TNETV1055)";
  case 129:
   return "TI AR7 (TNETV1056)";
  case 128:
   return "TI AR7 (TNETV1060)";
  }

 default:
  return "TI AR7 (unknown)";
 }
}
