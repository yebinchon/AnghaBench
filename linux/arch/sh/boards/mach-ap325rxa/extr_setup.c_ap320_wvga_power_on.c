
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPGA_LCDREG ;
 int FPGA_LCDREG_VAL ;
 int __raw_writew (int ,int ) ;
 int msleep (int) ;

__attribute__((used)) static void ap320_wvga_power_on(void)
{
 msleep(100);


 __raw_writew(FPGA_LCDREG_VAL, FPGA_LCDREG);
}
