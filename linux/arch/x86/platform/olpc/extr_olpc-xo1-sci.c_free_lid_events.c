
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OLPC_GPIO_LID ;
 int gpio_free (int ) ;

__attribute__((used)) static void free_lid_events(void)
{
 gpio_free(OLPC_GPIO_LID);
}
