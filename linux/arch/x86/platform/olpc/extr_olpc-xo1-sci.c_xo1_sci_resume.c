
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int EC_SCI_SRC_ALL ;
 int GPIO_EVENTS_ENABLE ;
 int OLPC_GPIO_LID ;
 int ac_status_changed () ;
 int battery_status_changed () ;
 int cs5535_gpio_set (int ,int ) ;
 int detect_lid_state () ;
 int olpc_ec_mask_write (int ) ;
 int send_lid_state () ;

__attribute__((used)) static int xo1_sci_resume(struct platform_device *pdev)
{




 detect_lid_state();
 send_lid_state();
 cs5535_gpio_set(OLPC_GPIO_LID, GPIO_EVENTS_ENABLE);


 olpc_ec_mask_write(EC_SCI_SRC_ALL);


 battery_status_changed();
 ac_status_changed();
 return 0;
}
