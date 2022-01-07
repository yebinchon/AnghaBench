
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmb_dev {int miscdev; } ;
struct i2c_client {int dummy; } ;


 struct ipmb_dev* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_slave_unregister (struct i2c_client*) ;
 int misc_deregister (int *) ;

__attribute__((used)) static int ipmb_remove(struct i2c_client *client)
{
 struct ipmb_dev *ipmb_dev = i2c_get_clientdata(client);

 i2c_slave_unregister(client);
 misc_deregister(&ipmb_dev->miscdev);

 return 0;
}
