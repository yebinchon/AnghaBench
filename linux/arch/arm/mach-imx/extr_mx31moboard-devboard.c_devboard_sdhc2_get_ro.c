
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int SDHC2_WP ;
 int gpio_get_value (int ) ;

__attribute__((used)) static int devboard_sdhc2_get_ro(struct device *dev)
{
 return !gpio_get_value(SDHC2_WP);
}
