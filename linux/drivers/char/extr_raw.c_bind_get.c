
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_device_data {struct block_device* binding; } ;
struct block_device {int bd_dev; } ;
typedef int dev_t ;


 int EINVAL ;
 int max_raw_minors ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct raw_device_data* raw_devices ;
 int raw_mutex ;

__attribute__((used)) static int bind_get(int number, dev_t *dev)
{
 struct raw_device_data *rawdev;
 struct block_device *bdev;

 if (number <= 0 || number >= max_raw_minors)
  return -EINVAL;

 rawdev = &raw_devices[number];

 mutex_lock(&raw_mutex);
 bdev = rawdev->binding;
 *dev = bdev ? bdev->bd_dev : 0;
 mutex_unlock(&raw_mutex);
 return 0;
}
