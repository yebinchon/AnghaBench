
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int MX21ADS_IO_SD_WP ;
 int gpio_get_value (int ) ;

__attribute__((used)) static int mx21ads_sdhc_get_ro(struct device *dev)
{
 return gpio_get_value(MX21ADS_IO_SD_WP);
}
