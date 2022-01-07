
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nbd_device {struct nbd_config* config; int config_lock; int refs; int config_refs; } ;
struct nbd_config {int dummy; } ;
struct block_device {int bd_invalidated; TYPE_1__* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_2__ {struct nbd_device* private_data; } ;


 int ENOMEM ;
 int ENXIO ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nbd_config* nbd_alloc_config () ;
 scalar_t__ nbd_disconnected (struct nbd_config*) ;
 int nbd_index_mutex ;
 int refcount_inc (int *) ;
 scalar_t__ refcount_inc_not_zero (int *) ;
 int refcount_set (int *,int) ;

__attribute__((used)) static int nbd_open(struct block_device *bdev, fmode_t mode)
{
 struct nbd_device *nbd;
 int ret = 0;

 mutex_lock(&nbd_index_mutex);
 nbd = bdev->bd_disk->private_data;
 if (!nbd) {
  ret = -ENXIO;
  goto out;
 }
 if (!refcount_inc_not_zero(&nbd->refs)) {
  ret = -ENXIO;
  goto out;
 }
 if (!refcount_inc_not_zero(&nbd->config_refs)) {
  struct nbd_config *config;

  mutex_lock(&nbd->config_lock);
  if (refcount_inc_not_zero(&nbd->config_refs)) {
   mutex_unlock(&nbd->config_lock);
   goto out;
  }
  config = nbd->config = nbd_alloc_config();
  if (!config) {
   ret = -ENOMEM;
   mutex_unlock(&nbd->config_lock);
   goto out;
  }
  refcount_set(&nbd->config_refs, 1);
  refcount_inc(&nbd->refs);
  mutex_unlock(&nbd->config_lock);
  bdev->bd_invalidated = 1;
 } else if (nbd_disconnected(nbd->config)) {
  bdev->bd_invalidated = 1;
 }
out:
 mutex_unlock(&nbd_index_mutex);
 return ret;
}
