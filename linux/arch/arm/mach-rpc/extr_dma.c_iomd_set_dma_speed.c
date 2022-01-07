
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dma_t ;






 int IOMD_DMATCR ;
 int iomd_readb (int ) ;
 int iomd_writeb (int,int ) ;

__attribute__((used)) static int iomd_set_dma_speed(unsigned int chan, dma_t *dma, int cycle)
{
 int tcr, speed;

 if (cycle < 188)
  speed = 3;
 else if (cycle <= 250)
  speed = 2;
 else if (cycle < 438)
  speed = 1;
 else
  speed = 0;

 tcr = iomd_readb(IOMD_DMATCR);
 speed &= 3;

 switch (chan) {
 case 131:
  tcr = (tcr & ~0x03) | speed;
  break;

 case 130:
  tcr = (tcr & ~0x0c) | (speed << 2);
  break;

 case 129:
  tcr = (tcr & ~0x30) | (speed << 4);
  break;

 case 128:
  tcr = (tcr & ~0xc0) | (speed << 6);
  break;

 default:
  break;
 }

 iomd_writeb(tcr, IOMD_DMATCR);

 return speed;
}
