
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct broadsheetfb_par {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (int*) ;
 int CFG_GPIO_PIN ;
 int CS_GPIO_PIN ;
 int DB0_GPIO_PIN ;
 int DB15_GPIO_PIN ;
 int DC_GPIO_PIN ;
 int IRQ_GPIO_PIN ;
 int PWR_GPIO_PIN ;
 int RDY_GPIO_PIN ;
 int RD_GPIO_PIN ;
 int RST_GPIO_PIN ;
 int WR_GPIO_PIN ;
 TYPE_1__* am300_device ;
 int am300_wait_event (struct broadsheetfb_par*) ;
 int dev_err (int *,char*,int,int) ;
 int gpio_direction_input (int ) ;
 int gpio_direction_output (int,int) ;
 int gpio_free (int) ;
 int* gpio_names ;
 int gpio_request (int,...) ;
 int gpio_set_value (int,int) ;
 int* gpios ;
 int msleep (int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int am300_init_gpio_regs(struct broadsheetfb_par *par)
{
 int i;
 int err;
 char dbname[8];

 for (i = 0; i < ARRAY_SIZE(gpios); i++) {
  err = gpio_request(gpios[i], gpio_names[i]);
  if (err) {
   dev_err(&am300_device->dev, "failed requesting "
    "gpio %s, err=%d\n", gpio_names[i], err);
   goto err_req_gpio;
  }
 }


 for (i = DB0_GPIO_PIN; i <= DB15_GPIO_PIN; i++) {
  sprintf(dbname, "DB%d", i);
  err = gpio_request(i, dbname);
  if (err) {
   dev_err(&am300_device->dev, "failed requesting "
    "gpio %d, err=%d\n", i, err);
   goto err_req_gpio2;
  }
 }


 gpio_direction_output(PWR_GPIO_PIN, 0);
 gpio_direction_output(CFG_GPIO_PIN, 1);
 gpio_direction_output(DC_GPIO_PIN, 0);
 gpio_direction_output(RD_GPIO_PIN, 1);
 gpio_direction_output(WR_GPIO_PIN, 1);
 gpio_direction_output(CS_GPIO_PIN, 1);
 gpio_direction_output(RST_GPIO_PIN, 0);


 gpio_direction_input(RDY_GPIO_PIN);
 gpio_direction_input(IRQ_GPIO_PIN);


 for (i = DB0_GPIO_PIN; i <= DB15_GPIO_PIN; i++)
  gpio_direction_output(i, 0);


 gpio_set_value(CFG_GPIO_PIN, 1);
 gpio_set_value(RST_GPIO_PIN, 0);
 msleep(10);
 gpio_set_value(RST_GPIO_PIN, 1);
 msleep(10);
 am300_wait_event(par);

 return 0;

err_req_gpio2:
 while (--i >= DB0_GPIO_PIN)
  gpio_free(i);
 i = ARRAY_SIZE(gpios);
err_req_gpio:
 while (--i >= 0)
  gpio_free(gpios[i]);

 return err;
}
