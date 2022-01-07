
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ps3_system_bus_device {int dummy; } ;
struct TYPE_2__ {int mutex; scalar_t__ gpu; } ;


 int BUG_ON (int) ;
 int lv1_gpu_close () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ usage_hack ;

__attribute__((used)) static int ps3_close_hv_device_gpu(struct ps3_system_bus_device *dev)
{
 int result;

 mutex_lock(&usage_hack.mutex);

 usage_hack.gpu--;
 if (usage_hack.gpu) {
  result = 0;
  goto done;
 }

 result = lv1_gpu_close();
 BUG_ON(result);

done:
 mutex_unlock(&usage_hack.mutex);
 return result;
}
