
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int irq_handler_t ;


 int IOMUX_TO_GPIO (int ) ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 int MMC_PAD_CFG ;
 int MX31_PIN_DCD_DCE1 ;
 int MX31_PIN_GPIO1_6 ;
 int MX31_PIN_SD1_CLK ;
 int MX31_PIN_SD1_CMD ;
 int MX31_PIN_SD1_DATA0 ;
 int MX31_PIN_SD1_DATA1 ;
 int MX31_PIN_SD1_DATA2 ;
 int MX31_PIN_SD1_DATA3 ;
 int PAD_CTL_100K_PU ;
 int PAD_CTL_PUE_PUD ;
 int gpio_det ;
 int gpio_direction_input (int ) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;
 int gpio_to_irq (int ) ;
 int gpio_wp ;
 int mxc_iomux_set_pad (int ,int) ;
 int request_irq (int ,int ,int,char*,void*) ;

__attribute__((used)) static int mxc_mmc1_init(struct device *dev,
    irq_handler_t detect_irq, void *data)
{
 int ret;

 gpio_det = IOMUX_TO_GPIO(MX31_PIN_DCD_DCE1);
 gpio_wp = IOMUX_TO_GPIO(MX31_PIN_GPIO1_6);

 mxc_iomux_set_pad(MX31_PIN_SD1_DATA0,
     MMC_PAD_CFG | PAD_CTL_PUE_PUD | PAD_CTL_100K_PU);
 mxc_iomux_set_pad(MX31_PIN_SD1_DATA1,
     MMC_PAD_CFG | PAD_CTL_PUE_PUD | PAD_CTL_100K_PU);
 mxc_iomux_set_pad(MX31_PIN_SD1_DATA2,
     MMC_PAD_CFG | PAD_CTL_PUE_PUD | PAD_CTL_100K_PU);
 mxc_iomux_set_pad(MX31_PIN_SD1_DATA3,
     MMC_PAD_CFG | PAD_CTL_PUE_PUD | PAD_CTL_100K_PU);
 mxc_iomux_set_pad(MX31_PIN_SD1_CMD,
     MMC_PAD_CFG | PAD_CTL_PUE_PUD | PAD_CTL_100K_PU);
 mxc_iomux_set_pad(MX31_PIN_SD1_CLK, MMC_PAD_CFG);

 ret = gpio_request(gpio_det, "MMC detect");
 if (ret)
  return ret;

 ret = gpio_request(gpio_wp, "MMC w/p");
 if (ret)
  goto exit_free_det;

 gpio_direction_input(gpio_det);
 gpio_direction_input(gpio_wp);

 ret = request_irq(gpio_to_irq(IOMUX_TO_GPIO(MX31_PIN_DCD_DCE1)),
     detect_irq,
     IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
     "MMC detect", data);
 if (ret)
  goto exit_free_wp;

 return 0;

exit_free_wp:
 gpio_free(gpio_wp);

exit_free_det:
 gpio_free(gpio_det);

 return ret;
}
