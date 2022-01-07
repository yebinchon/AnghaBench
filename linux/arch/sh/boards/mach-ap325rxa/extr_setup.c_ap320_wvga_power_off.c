
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPGA_LCDREG ;
 int __raw_writew (int ,int ) ;

__attribute__((used)) static void ap320_wvga_power_off(void)
{

 __raw_writew(0, FPGA_LCDREG);
}
