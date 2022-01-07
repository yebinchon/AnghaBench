
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPGA_BKLREG ;
 int GPIO_PTS3 ;
 int __raw_writew (int,int ) ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static int ap320_wvga_set_brightness(int brightness)
{
 if (brightness) {
  gpio_set_value(GPIO_PTS3, 0);
  __raw_writew(0x100, FPGA_BKLREG);
 } else {
  __raw_writew(0, FPGA_BKLREG);
  gpio_set_value(GPIO_PTS3, 1);
 }

 return 0;
}
