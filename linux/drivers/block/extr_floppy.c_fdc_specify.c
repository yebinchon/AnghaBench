
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned long srt; unsigned long hlt; unsigned long hut; } ;
struct TYPE_5__ {scalar_t__ version; unsigned char spec1; unsigned char spec2; scalar_t__ need_configure; } ;
struct TYPE_4__ {int rate; } ;


 int DIV_ROUND_UP (unsigned long,unsigned long) ;
 TYPE_3__* DP ;
 TYPE_2__* FDCS ;
 scalar_t__ FDC_82072 ;
 scalar_t__ FDC_82072A ;
 scalar_t__ FDC_82078 ;
 int FD_DRIVESPEC ;
 int FD_SPECIFY ;
 int INFBOUND (unsigned long,int ) ;
 int MORE_OUTPUT ;
 unsigned long NOMINAL_DTR ;
 int SUPBOUND (unsigned long,int) ;
 int UNIT (int ) ;
 int current_drive ;
 int fdc_configure () ;
 int need_more_output () ;
 int output_byte (int) ;
 TYPE_1__* raw_cmd ;
 scalar_t__ slow_floppy ;
 int use_virtual_dma ;

__attribute__((used)) static void fdc_specify(void)
{
 unsigned char spec1;
 unsigned char spec2;
 unsigned long srt;
 unsigned long hlt;
 unsigned long hut;
 unsigned long dtr = NOMINAL_DTR;
 unsigned long scale_dtr = NOMINAL_DTR;
 int hlt_max_code = 0x7f;
 int hut_max_code = 0xf;

 if (FDCS->need_configure && FDCS->version >= FDC_82072A) {
  fdc_configure();
  FDCS->need_configure = 0;
 }

 switch (raw_cmd->rate & 0x03) {
 case 3:
  dtr = 1000;
  break;
 case 1:
  dtr = 300;
  if (FDCS->version >= FDC_82078) {


   output_byte(FD_DRIVESPEC);
   if (need_more_output() == MORE_OUTPUT) {
    output_byte(UNIT(current_drive));
    output_byte(0xc0);
   }
  }
  break;
 case 2:
  dtr = 250;
  break;
 }

 if (FDCS->version >= FDC_82072) {
  scale_dtr = dtr;
  hlt_max_code = 0x00;
  hut_max_code = 0x0;
 }


 srt = 16 - DIV_ROUND_UP(DP->srt * scale_dtr / 1000, NOMINAL_DTR);
 if (slow_floppy)
  srt = srt / 4;

 SUPBOUND(srt, 0xf);
 INFBOUND(srt, 0);

 hlt = DIV_ROUND_UP(DP->hlt * scale_dtr / 2, NOMINAL_DTR);
 if (hlt < 0x01)
  hlt = 0x01;
 else if (hlt > 0x7f)
  hlt = hlt_max_code;

 hut = DIV_ROUND_UP(DP->hut * scale_dtr / 16, NOMINAL_DTR);
 if (hut < 0x1)
  hut = 0x1;
 else if (hut > 0xf)
  hut = hut_max_code;

 spec1 = (srt << 4) | hut;
 spec2 = (hlt << 1) | (use_virtual_dma & 1);


 if (FDCS->spec1 != spec1 || FDCS->spec2 != spec2) {

  output_byte(FD_SPECIFY);
  output_byte(FDCS->spec1 = spec1);
  output_byte(FDCS->spec2 = spec2);
 }
}
