
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int mutex; } ;


 size_t ERESTARTSYS ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* prng_data ;
 int prng_sha512_reseed () ;

__attribute__((used)) static ssize_t prng_reseed_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 if (mutex_lock_interruptible(&prng_data->mutex))
  return -ERESTARTSYS;
 prng_sha512_reseed();
 mutex_unlock(&prng_data->mutex);

 return count;
}
