
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int config; } ;


 unsigned char GAYLE_CFG_0V ;
 unsigned char GAYLE_CFG_12V ;
 unsigned char GAYLE_CFG_5V ;



 int cfg_byte ;
 TYPE_1__ gayle ;

void pcmcia_program_voltage(int voltage)
{
 unsigned char v;

 switch (voltage) {
 case 130:
  v = GAYLE_CFG_0V;
  break;
 case 128:
  v = GAYLE_CFG_5V;
  break;
 case 129:
  v = GAYLE_CFG_12V;
  break;
 default:
  v = GAYLE_CFG_0V;
 }

 cfg_byte = (cfg_byte & 0xfc) | v;
 gayle.config = cfg_byte;

}
