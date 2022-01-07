
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int irq_handler_t ;


 int IRQF_TRIGGER_FALLING ;
 int MX21ADS_IO_SD_WP ;
 int MX21ADS_MMC_CD ;
 int gpio_request (int ,char*) ;
 int gpio_to_irq (int ) ;
 int request_irq (int ,int ,int ,char*,void*) ;

__attribute__((used)) static int mx21ads_sdhc_init(struct device *dev, irq_handler_t detect_irq,
 void *data)
{
 int ret;

 ret = gpio_request(MX21ADS_IO_SD_WP, "mmc-ro");
 if (ret)
  return ret;

 return request_irq(gpio_to_irq(MX21ADS_MMC_CD), detect_irq,
      IRQF_TRIGGER_FALLING, "mmc-detect", data);
}
