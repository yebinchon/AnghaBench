
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct input_handler {int dummy; } ;
struct input_device_id {int dummy; } ;
struct input_dev {int name; int keybit; } ;
struct TYPE_6__ {int name; struct input_handler* handler; struct input_dev* dev; struct bh_priv* private; } ;
struct bh_priv {unsigned long* seen; TYPE_1__ handle; } ;
struct TYPE_7__ {int code; } ;


 int ARRAY_SIZE (TYPE_4__*) ;
 int BH_DBG (char*,int ) ;
 int DRV_NAME ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_4__* button_map ;
 int input_open_device (TYPE_1__*) ;
 int input_register_handle (TYPE_1__*) ;
 int input_unregister_handle (TYPE_1__*) ;
 int kfree (struct bh_priv*) ;
 struct bh_priv* kzalloc (int,int ) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int button_hotplug_connect(struct input_handler *handler,
  struct input_dev *dev, const struct input_device_id *id)
{
 struct bh_priv *priv;
 int ret;
 int i;

 for (i = 0; i < ARRAY_SIZE(button_map); i++)
  if (test_bit(button_map[i].code, dev->keybit))
   break;

 if (i == ARRAY_SIZE(button_map))
  return -ENODEV;

 priv = kzalloc(sizeof(*priv) +
         (sizeof(unsigned long) * ARRAY_SIZE(button_map)),
         GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->seen = (unsigned long *) &priv[1];
 priv->handle.private = priv;
 priv->handle.dev = dev;
 priv->handle.handler = handler;
 priv->handle.name = DRV_NAME;

 ret = input_register_handle(&priv->handle);
 if (ret)
  goto err_free_priv;

 ret = input_open_device(&priv->handle);
 if (ret)
  goto err_unregister_handle;

 BH_DBG("connected to %s\n", dev->name);

 return 0;

 err_unregister_handle:
 input_unregister_handle(&priv->handle);

 err_free_priv:
 kfree(priv);
 return ret;
}
