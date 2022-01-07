
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct raw_device_data {int * binding; scalar_t__ inuse; } ;
typedef scalar_t__ dev_t ;


 int CAP_SYS_ADMIN ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 scalar_t__ MAJOR (scalar_t__) ;
 scalar_t__ MINOR (scalar_t__) ;
 scalar_t__ MKDEV (scalar_t__,int) ;
 scalar_t__ RAW_MAJOR ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int * bdget (scalar_t__) ;
 int bdput (int *) ;
 int capable (int ) ;
 int device_create (int ,int *,scalar_t__,int *,char*,int) ;
 int device_destroy (int ,scalar_t__) ;
 int max_raw_minors ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int raw_class ;
 struct raw_device_data* raw_devices ;
 int raw_mutex ;

__attribute__((used)) static int bind_set(int number, u64 major, u64 minor)
{
 dev_t dev = MKDEV(major, minor);
 struct raw_device_data *rawdev;
 int err = 0;

 if (number <= 0 || number >= max_raw_minors)
  return -EINVAL;

 if (MAJOR(dev) != major || MINOR(dev) != minor)
  return -EINVAL;

 rawdev = &raw_devices[number];





 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;
 if (MAJOR(dev) == 0 && dev != 0)
  return -EINVAL;

 mutex_lock(&raw_mutex);
 if (rawdev->inuse) {
  mutex_unlock(&raw_mutex);
  return -EBUSY;
 }
 if (rawdev->binding) {
  bdput(rawdev->binding);
  module_put(THIS_MODULE);
 }
 if (!dev) {

  rawdev->binding = ((void*)0);
  device_destroy(raw_class, MKDEV(RAW_MAJOR, number));
 } else {
  rawdev->binding = bdget(dev);
  if (rawdev->binding == ((void*)0)) {
   err = -ENOMEM;
  } else {
   dev_t raw = MKDEV(RAW_MAJOR, number);
   __module_get(THIS_MODULE);
   device_destroy(raw_class, raw);
   device_create(raw_class, ((void*)0), raw, ((void*)0),
          "raw%d", number);
  }
 }
 mutex_unlock(&raw_mutex);
 return err;
}
