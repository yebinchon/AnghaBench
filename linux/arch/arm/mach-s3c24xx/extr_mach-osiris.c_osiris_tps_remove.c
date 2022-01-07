
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int osiris_tps_device ;
 int platform_device_unregister (int *) ;

__attribute__((used)) static int osiris_tps_remove(struct i2c_client *client, void *context)
{
 platform_device_unregister(&osiris_tps_device);
 return 0;
}
