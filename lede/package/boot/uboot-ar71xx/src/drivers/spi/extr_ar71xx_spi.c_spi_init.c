
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ AR71XX_SPI_BASE ;
 int KSEG1ADDR (scalar_t__) ;
 int PRINTD (char*) ;
 scalar_t__ SPI_REG_CTRL ;
 int __raw_writel (int,int ) ;

void spi_init()
{
 PRINTD("ar71xx_spi: spi_init");


 __raw_writel(0x43, KSEG1ADDR(AR71XX_SPI_BASE + SPI_REG_CTRL));

 PRINTD(" ---> out\n");
}
