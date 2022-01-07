
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int reg ;
typedef int fpga ;


 int EBONY_FPGA_FLASH_SEL ;
 int EBONY_FPGA_PATH ;
 int EBONY_SMALL_FLASH_PATH ;
 int fatal (char*,int ) ;
 void* finddevice (int ) ;
 int getprop (void*,char*,...) ;
 int in_8 (int*) ;
 int setprop (void*,char*,int*,int) ;

__attribute__((used)) static void ebony_flashsel_fixup(void)
{
 void *devp;
 u32 reg[3] = {0x0, 0x0, 0x80000};
 u8 *fpga;
 u8 fpga_reg0 = 0x0;

 devp = finddevice(EBONY_FPGA_PATH);
 if (!devp)
  fatal("Couldn't locate FPGA node %s\n\r", EBONY_FPGA_PATH);

 if (getprop(devp, "virtual-reg", &fpga, sizeof(fpga)) != sizeof(fpga))
  fatal("%s has missing or invalid virtual-reg property\n\r",
        EBONY_FPGA_PATH);

 fpga_reg0 = in_8(fpga);

 devp = finddevice(EBONY_SMALL_FLASH_PATH);
 if (!devp)
  fatal("Couldn't locate small flash node %s\n\r",
        EBONY_SMALL_FLASH_PATH);

 if (getprop(devp, "reg", reg, sizeof(reg)) != sizeof(reg))
  fatal("%s has reg property of unexpected size\n\r",
        EBONY_SMALL_FLASH_PATH);


 if (fpga_reg0 & EBONY_FPGA_FLASH_SEL)
  reg[1] ^= 0x80000;

 setprop(devp, "reg", reg, sizeof(reg));
}
