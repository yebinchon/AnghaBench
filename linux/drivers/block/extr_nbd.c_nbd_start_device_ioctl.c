
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbd_device {int config_lock; int recv_workq; struct nbd_config* config; } ;
struct nbd_config {int runtime_flags; int recv_threads; int recv_wq; } ;
struct block_device {int bd_invalidated; } ;


 int ETIMEDOUT ;
 int NBD_RT_DISCONNECT_REQUESTED ;
 int NBD_RT_TIMEDOUT ;
 scalar_t__ atomic_read (int *) ;
 int flush_workqueue (int ) ;
 scalar_t__ max_part ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nbd_bdev_reset (struct block_device*) ;
 int nbd_start_device (struct nbd_device*) ;
 int sock_shutdown (struct nbd_device*) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int nbd_start_device_ioctl(struct nbd_device *nbd, struct block_device *bdev)
{
 struct nbd_config *config = nbd->config;
 int ret;

 ret = nbd_start_device(nbd);
 if (ret)
  return ret;

 if (max_part)
  bdev->bd_invalidated = 1;
 mutex_unlock(&nbd->config_lock);
 ret = wait_event_interruptible(config->recv_wq,
      atomic_read(&config->recv_threads) == 0);
 if (ret) {
  sock_shutdown(nbd);
  flush_workqueue(nbd->recv_workq);
 }
 mutex_lock(&nbd->config_lock);
 nbd_bdev_reset(bdev);

 if (test_bit(NBD_RT_DISCONNECT_REQUESTED, &config->runtime_flags))
  ret = 0;
 if (test_bit(NBD_RT_TIMEDOUT, &config->runtime_flags))
  ret = -ETIMEDOUT;
 return ret;
}
