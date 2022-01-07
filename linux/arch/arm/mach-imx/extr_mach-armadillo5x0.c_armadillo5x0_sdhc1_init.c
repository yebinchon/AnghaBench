
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int irq_handler_t ;


 int IOMUX_TO_GPIO (int ) ;
 int IRQF_TRIGGER_FALLING ;
 int MX31_PIN_ATA_DMACK ;
 int MX31_PIN_ATA_RESET_B ;
 int gpio_direction_input (int) ;
 int gpio_free (int) ;
 int gpio_request (int,char*) ;
 int gpio_to_irq (int) ;
 int request_irq (int ,int ,int ,char*,void*) ;

__attribute__((used)) static int armadillo5x0_sdhc1_init(struct device *dev,
       irq_handler_t detect_irq, void *data)
{
 int ret;
 int gpio_det, gpio_wp;

 gpio_det = IOMUX_TO_GPIO(MX31_PIN_ATA_DMACK);
 gpio_wp = IOMUX_TO_GPIO(MX31_PIN_ATA_RESET_B);

 ret = gpio_request(gpio_det, "sdhc-card-detect");
 if (ret)
  return ret;

 gpio_direction_input(gpio_det);

 ret = gpio_request(gpio_wp, "sdhc-write-protect");
 if (ret)
  goto err_gpio_free;

 gpio_direction_input(gpio_wp);


 ret = request_irq(gpio_to_irq(IOMUX_TO_GPIO(MX31_PIN_ATA_DMACK)),
     detect_irq, IRQF_TRIGGER_FALLING,
     "sdhc-detect", data);

 if (ret)
  goto err_gpio_free_2;

 return 0;

err_gpio_free_2:
 gpio_free(gpio_wp);

err_gpio_free:
 gpio_free(gpio_det);

 return ret;

}
