
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_state {int dummy; } ;
struct led_classdev {int dev; struct port_state* trigger_data; } ;


 int dev_attr_port_state ;
 int device_remove_file (int ,int *) ;

__attribute__((used)) static void adm5120_switch_trig_deactivate(struct led_classdev *led_cdev)
{
 struct port_state *state = led_cdev->trigger_data;

 if (!state)
  return;

 device_remove_file(led_cdev->dev, &dev_attr_port_state);

}
