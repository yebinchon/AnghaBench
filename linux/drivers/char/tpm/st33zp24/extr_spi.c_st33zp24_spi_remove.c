
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dummy; } ;
struct spi_device {int dummy; } ;


 struct tpm_chip* spi_get_drvdata (struct spi_device*) ;
 int st33zp24_remove (struct tpm_chip*) ;

__attribute__((used)) static int st33zp24_spi_remove(struct spi_device *dev)
{
 struct tpm_chip *chip = spi_get_drvdata(dev);
 int ret;

 ret = st33zp24_remove(chip);
 if (ret)
  return ret;

 return 0;
}
