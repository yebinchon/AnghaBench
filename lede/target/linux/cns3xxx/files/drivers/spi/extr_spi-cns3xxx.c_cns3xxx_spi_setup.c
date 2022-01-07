
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int bits_per_word; } ;



__attribute__((used)) static int cns3xxx_spi_setup(struct spi_device *spi)
{
 if (!spi->bits_per_word)
  spi->bits_per_word = 8;

 return 0;
}
