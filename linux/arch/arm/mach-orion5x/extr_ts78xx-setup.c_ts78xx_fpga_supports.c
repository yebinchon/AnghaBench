
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int present; } ;
struct TYPE_7__ {int present; } ;
struct TYPE_6__ {int present; } ;
struct TYPE_9__ {TYPE_3__ ts_rng; TYPE_2__ ts_nand; TYPE_1__ ts_rtc; } ;
struct TYPE_10__ {int id; TYPE_4__ supports; } ;
 int pr_warn (char*,int) ;
 TYPE_5__ ts78xx_fpga ;

__attribute__((used)) static void ts78xx_fpga_supports(void)
{

 switch (ts78xx_fpga.id) {
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  ts78xx_fpga.supports.ts_rtc.present = 1;
  ts78xx_fpga.supports.ts_nand.present = 1;
  ts78xx_fpga.supports.ts_rng.present = 1;
  break;
 default:

  switch ((ts78xx_fpga.id >> 8) & 0xffffff) {
  case 137:
   pr_warn("unrecognised FPGA revision 0x%.2x\n",
    ts78xx_fpga.id & 0xff);
   ts78xx_fpga.supports.ts_rtc.present = 1;
   ts78xx_fpga.supports.ts_nand.present = 1;
   ts78xx_fpga.supports.ts_rng.present = 1;
   break;
  default:
   ts78xx_fpga.supports.ts_rtc.present = 0;
   ts78xx_fpga.supports.ts_nand.present = 0;
   ts78xx_fpga.supports.ts_rng.present = 0;
  }
 }
}
