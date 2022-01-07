
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int can_sleep; int base; struct device_node* of_node; int direction_output; int set; int ngpio; int label; int owner; } ;
struct mcu {struct gpio_chip gc; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int GFP_KERNEL ;
 int MCU_NUM_GPIO ;
 int THIS_MODULE ;
 int gpiochip_add_data (struct gpio_chip*,struct mcu*) ;
 int kasprintf (int ,char*,struct device_node*) ;
 int mcu_gpio_dir_out ;
 int mcu_gpio_set ;
 struct device_node* of_find_compatible_node (int *,int *,char*) ;

__attribute__((used)) static int mcu_gpiochip_add(struct mcu *mcu)
{
 struct device_node *np;
 struct gpio_chip *gc = &mcu->gc;

 np = of_find_compatible_node(((void*)0), ((void*)0), "fsl,mcu-mpc8349emitx");
 if (!np)
  return -ENODEV;

 gc->owner = THIS_MODULE;
 gc->label = kasprintf(GFP_KERNEL, "%pOF", np);
 gc->can_sleep = 1;
 gc->ngpio = MCU_NUM_GPIO;
 gc->base = -1;
 gc->set = mcu_gpio_set;
 gc->direction_output = mcu_gpio_dir_out;
 gc->of_node = np;

 return gpiochip_add_data(gc, mcu);
}
