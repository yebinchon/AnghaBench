
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_keys_platform_data {int (* disable ) (int ) ;} ;
struct gpio_keys_button_dev {int dev; int work; struct gpio_keys_platform_data* pdata; } ;


 int cancel_delayed_work_sync (int *) ;
 int stub1 (int ) ;

__attribute__((used)) static void gpio_keys_polled_close(struct gpio_keys_button_dev *bdev)
{
 struct gpio_keys_platform_data *pdata = bdev->pdata;

 cancel_delayed_work_sync(&bdev->work);

 if (pdata->disable)
  pdata->disable(bdev->dev);
}
