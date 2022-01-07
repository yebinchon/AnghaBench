
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AR724X_GPIO_FUNC_JTAG_DISABLE ;
 int AR724X_GPIO_FUNC_SPI_CS_EN2 ;
 int AR724X_GPIO_FUNC_SPI_EN ;
 int ath79_gpio_function_setup (int,int ) ;

__attribute__((used)) static void rb750gr3_nand_disable_pins(void)
{
 ath79_gpio_function_setup(AR724X_GPIO_FUNC_SPI_EN |
      AR724X_GPIO_FUNC_SPI_CS_EN2,
      AR724X_GPIO_FUNC_JTAG_DISABLE);
}
