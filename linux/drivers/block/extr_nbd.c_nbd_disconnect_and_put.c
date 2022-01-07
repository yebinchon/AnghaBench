
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nbd_device {TYPE_1__* config; int recv_workq; int config_lock; } ;
struct TYPE_2__ {int runtime_flags; } ;


 int NBD_RT_HAS_CONFIG_REF ;
 int flush_workqueue (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nbd_clear_sock (struct nbd_device*) ;
 int nbd_config_put (struct nbd_device*) ;
 int nbd_disconnect (struct nbd_device*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void nbd_disconnect_and_put(struct nbd_device *nbd)
{
 mutex_lock(&nbd->config_lock);
 nbd_disconnect(nbd);
 nbd_clear_sock(nbd);
 mutex_unlock(&nbd->config_lock);





 flush_workqueue(nbd->recv_workq);
 if (test_and_clear_bit(NBD_RT_HAS_CONFIG_REF,
          &nbd->config->runtime_flags))
  nbd_config_put(nbd);
}
