
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_state {int value; } ;
struct led_classdev {struct port_state* trigger_data; int dev; } ;


 int dev_attr_port_state ;
 int device_create_file (int ,int *) ;
 int led_set_brightness (struct led_classdev*,int ) ;
 struct port_state* port_states ;

__attribute__((used)) static void adm5120_switch_trig_activate(struct led_classdev *led_cdev)
{
 struct port_state *state = port_states;
 int rc;

 led_cdev->trigger_data = state;

 rc = device_create_file(led_cdev->dev, &dev_attr_port_state);
 if (rc)
  goto err;

 led_set_brightness(led_cdev, state->value);

 return;
err:
 led_cdev->trigger_data = ((void*)0);
}
