
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int config; } ;


 unsigned char GAYLE_CFG_100NS ;
 unsigned char GAYLE_CFG_150NS ;
 unsigned char GAYLE_CFG_250NS ;
 unsigned char GAYLE_CFG_720NS ;
 int PCMCIA_SPEED_100NS ;
 int PCMCIA_SPEED_150NS ;
 int PCMCIA_SPEED_250NS ;
 int cfg_byte ;
 TYPE_1__ gayle ;

void pcmcia_access_speed(int speed)
{
 unsigned char s;

 if (speed <= PCMCIA_SPEED_100NS)
  s = GAYLE_CFG_100NS;
 else if (speed <= PCMCIA_SPEED_150NS)
  s = GAYLE_CFG_150NS;
 else if (speed <= PCMCIA_SPEED_250NS)
  s = GAYLE_CFG_250NS;
 else
  s = GAYLE_CFG_720NS;

 cfg_byte = (cfg_byte & 0xf3) | s;
 gayle.config = cfg_byte;
}
