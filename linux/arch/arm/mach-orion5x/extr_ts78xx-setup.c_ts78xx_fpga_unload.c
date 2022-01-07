
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int id; int state; } ;


 int EBUSY ;
 int TS78XX_FPGA_REGS_VIRT_BASE ;
 int pr_err (char*,int,int,unsigned int,unsigned int) ;
 unsigned int readl (int ) ;
 TYPE_1__ ts78xx_fpga ;
 scalar_t__ ts78xx_fpga_unload_devices () ;

__attribute__((used)) static int ts78xx_fpga_unload(void)
{
 unsigned int fpga_id;

 fpga_id = readl(TS78XX_FPGA_REGS_VIRT_BASE);
 if (ts78xx_fpga.id != fpga_id) {
  pr_err("FPGA magic/rev mismatch\n"
   "TS-78xx FPGA: was 0x%.6x/%.2x but now 0x%.6x/%.2x\n",
   (ts78xx_fpga.id >> 8) & 0xffffff, ts78xx_fpga.id & 0xff,
   (fpga_id >> 8) & 0xffffff, fpga_id & 0xff);
  ts78xx_fpga.state = -1;
  return -EBUSY;
 }

 if (ts78xx_fpga_unload_devices()) {
  ts78xx_fpga.state = -1;
  return -EBUSY;
 }

 return 0;
}
