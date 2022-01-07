
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i2c_client {int dev; } ;
struct TYPE_4__ {int * parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 TYPE_2__ osiris_tps_device ;
 int platform_device_register (TYPE_2__*) ;

__attribute__((used)) static int osiris_tps_setup(struct i2c_client *client, void *context)
{
 osiris_tps_device.dev.parent = &client->dev;
 return platform_device_register(&osiris_tps_device);
}
