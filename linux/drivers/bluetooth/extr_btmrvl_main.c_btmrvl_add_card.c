
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx_dnld_rdy; void* card; } ;
struct TYPE_4__ {int task; int wait_q; struct btmrvl_private* priv; } ;
struct btmrvl_private {TYPE_1__ btmrvl_dev; TYPE_2__ main_thread; int driver_lock; void* adapter; } ;


 int BT_DBG (char*) ;
 int BT_ERR (char*) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int btmrvl_free_adapter (struct btmrvl_private*) ;
 int btmrvl_init_adapter (struct btmrvl_private*) ;
 int btmrvl_service_main_thread ;
 int init_waitqueue_head (int *) ;
 int kfree (struct btmrvl_private*) ;
 int kthread_run (int ,TYPE_2__*,char*) ;
 void* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

struct btmrvl_private *btmrvl_add_card(void *card)
{
 struct btmrvl_private *priv;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv) {
  BT_ERR("Can not allocate priv");
  goto err_priv;
 }

 priv->adapter = kzalloc(sizeof(*priv->adapter), GFP_KERNEL);
 if (!priv->adapter) {
  BT_ERR("Allocate buffer for btmrvl_adapter failed!");
  goto err_adapter;
 }

 btmrvl_init_adapter(priv);

 BT_DBG("Starting kthread...");
 priv->main_thread.priv = priv;
 spin_lock_init(&priv->driver_lock);

 init_waitqueue_head(&priv->main_thread.wait_q);
 priv->main_thread.task = kthread_run(btmrvl_service_main_thread,
    &priv->main_thread, "btmrvl_main_service");
 if (IS_ERR(priv->main_thread.task))
  goto err_thread;

 priv->btmrvl_dev.card = card;
 priv->btmrvl_dev.tx_dnld_rdy = 1;

 return priv;

err_thread:
 btmrvl_free_adapter(priv);

err_adapter:
 kfree(priv);

err_priv:
 return ((void*)0);
}
