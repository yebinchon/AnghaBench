
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbd_device {int index; int refs; } ;


 int idr_remove (int *,int ) ;
 int mutex_unlock (int *) ;
 int nbd_dev_remove (struct nbd_device*) ;
 int nbd_index_idr ;
 int nbd_index_mutex ;
 scalar_t__ refcount_dec_and_mutex_lock (int *,int *) ;

__attribute__((used)) static void nbd_put(struct nbd_device *nbd)
{
 if (refcount_dec_and_mutex_lock(&nbd->refs,
     &nbd_index_mutex)) {
  idr_remove(&nbd_index_idr, nbd->index);
  nbd_dev_remove(nbd);
  mutex_unlock(&nbd_index_mutex);
 }
}
