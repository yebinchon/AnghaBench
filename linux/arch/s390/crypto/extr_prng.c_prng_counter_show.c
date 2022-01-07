
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_5__ {int byte_counter; } ;
struct TYPE_4__ {int stream_bytes; } ;
struct TYPE_6__ {int mutex; TYPE_2__ prngws; TYPE_1__ prnows; } ;


 int ERESTARTSYS ;
 int PAGE_SIZE ;
 scalar_t__ PRNG_MODE_SHA512 ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 TYPE_3__* prng_data ;
 scalar_t__ prng_mode ;
 int snprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t prng_counter_show(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 u64 counter;

 if (mutex_lock_interruptible(&prng_data->mutex))
  return -ERESTARTSYS;
 if (prng_mode == PRNG_MODE_SHA512)
  counter = prng_data->prnows.stream_bytes;
 else
  counter = prng_data->prngws.byte_counter;
 mutex_unlock(&prng_data->mutex);

 return snprintf(buf, PAGE_SIZE, "%llu\n", counter);
}
