
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int irq_handler_t ;


 int POODLE_GPIO_SD_PWR ;
 int POODLE_GPIO_SD_PWR1 ;
 int gpio_direction_output (int ,int ) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;

__attribute__((used)) static int poodle_mci_init(struct device *dev, irq_handler_t poodle_detect_int, void *data)
{
 int err;

 err = gpio_request(POODLE_GPIO_SD_PWR, "SD_PWR");
 if (err)
  goto err_free_2;

 err = gpio_request(POODLE_GPIO_SD_PWR1, "SD_PWR1");
 if (err)
  goto err_free_3;

 gpio_direction_output(POODLE_GPIO_SD_PWR, 0);
 gpio_direction_output(POODLE_GPIO_SD_PWR1, 0);

 return 0;

err_free_3:
 gpio_free(POODLE_GPIO_SD_PWR);
err_free_2:
 return err;
}
