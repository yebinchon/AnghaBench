
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int MX21ADS_IO_SD_WP ;
 int MX21ADS_MMC_CD ;
 int free_irq (int ,void*) ;
 int gpio_free (int ) ;
 int gpio_to_irq (int ) ;

__attribute__((used)) static void mx21ads_sdhc_exit(struct device *dev, void *data)
{
 free_irq(gpio_to_irq(MX21ADS_MMC_CD), data);
 gpio_free(MX21ADS_IO_SD_WP);
}
