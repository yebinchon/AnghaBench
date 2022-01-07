
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COLLIE_GPIO_VPEN ;
 int gpio_free (int ) ;

__attribute__((used)) static void collie_flash_exit(void)
{
 gpio_free(COLLIE_GPIO_VPEN);
}
