
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; int state; } ;


 int EBUSY ;
 int TS78XX_FPGA_REGS_VIRT_BASE ;
 int pr_info (char*,int,int) ;
 int readl (int ) ;
 TYPE_1__ ts78xx_fpga ;
 scalar_t__ ts78xx_fpga_load_devices () ;
 int ts78xx_fpga_supports () ;

__attribute__((used)) static int ts78xx_fpga_load(void)
{
 ts78xx_fpga.id = readl(TS78XX_FPGA_REGS_VIRT_BASE);

 pr_info("FPGA magic=0x%.6x, rev=0x%.2x\n",
   (ts78xx_fpga.id >> 8) & 0xffffff,
   ts78xx_fpga.id & 0xff);

 ts78xx_fpga_supports();

 if (ts78xx_fpga_load_devices()) {
  ts78xx_fpga.state = -1;
  return -EBUSY;
 }

 return 0;
}
