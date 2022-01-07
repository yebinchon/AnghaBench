
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * parent; int * fops; int name; int minor; } ;
struct ipmb_dev {TYPE_2__ miscdev; struct i2c_client* client; int file_mutex; int request_queue; int request_queue_len; int wait_queue; int lock; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; TYPE_1__* adapter; } ;
struct TYPE_4__ {int nr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MISC_DYNAMIC_MINOR ;
 int atomic_set (int *,int ) ;
 int devm_kasprintf (int *,int ,char*,char*,int ) ;
 struct ipmb_dev* devm_kzalloc (int *,int,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct ipmb_dev*) ;
 int i2c_slave_register (struct i2c_client*,int ) ;
 int init_waitqueue_head (int *) ;
 int ipmb_fops ;
 int ipmb_slave_cb ;
 int misc_deregister (TYPE_2__*) ;
 int misc_register (TYPE_2__*) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int ipmb_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct ipmb_dev *ipmb_dev;
 int ret;

 ipmb_dev = devm_kzalloc(&client->dev, sizeof(*ipmb_dev),
     GFP_KERNEL);
 if (!ipmb_dev)
  return -ENOMEM;

 spin_lock_init(&ipmb_dev->lock);
 init_waitqueue_head(&ipmb_dev->wait_queue);
 atomic_set(&ipmb_dev->request_queue_len, 0);
 INIT_LIST_HEAD(&ipmb_dev->request_queue);

 mutex_init(&ipmb_dev->file_mutex);

 ipmb_dev->miscdev.minor = MISC_DYNAMIC_MINOR;

 ipmb_dev->miscdev.name = devm_kasprintf(&client->dev, GFP_KERNEL,
      "%s%d", "ipmb-",
      client->adapter->nr);
 ipmb_dev->miscdev.fops = &ipmb_fops;
 ipmb_dev->miscdev.parent = &client->dev;
 ret = misc_register(&ipmb_dev->miscdev);
 if (ret)
  return ret;

 ipmb_dev->client = client;
 i2c_set_clientdata(client, ipmb_dev);
 ret = i2c_slave_register(client, ipmb_slave_cb);
 if (ret) {
  misc_deregister(&ipmb_dev->miscdev);
  return ret;
 }

 return 0;
}
