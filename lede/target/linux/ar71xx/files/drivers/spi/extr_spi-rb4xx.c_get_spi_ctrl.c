
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb4xx_spi {int ahb_freq; } ;


 int SPI_CTRL_FASTEST ;
 int pr_debug (char*,char const*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static unsigned get_spi_ctrl(struct rb4xx_spi *rbspi, unsigned hz_max,
        const char *name)
{
 unsigned div;

 div = (rbspi->ahb_freq - 1) / (2 * hz_max);




 if (div == 0)
  ++div;

 if (name) {
  unsigned ahb_khz = (rbspi->ahb_freq + 500) / 1000;
  unsigned div_real = 2 * (div + 1);
  pr_debug("rb4xx: %s SPI clock %u kHz (AHB %u kHz / %u)\n",
         name,
         ahb_khz / div_real,
         ahb_khz, div_real);
 }

 return SPI_CTRL_FASTEST + div;
}
