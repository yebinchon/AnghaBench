
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_context {int lock; int release_work; int icq_list; int refcount; } ;


 int BUG_ON (int) ;
 scalar_t__ atomic_long_dec_and_test (int *) ;
 scalar_t__ atomic_long_read (int *) ;
 int hlist_empty (int *) ;
 int iocontext_cachep ;
 int kmem_cache_free (int ,struct io_context*) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int system_power_efficient_wq ;

void put_io_context(struct io_context *ioc)
{
 unsigned long flags;
 bool free_ioc = 0;

 if (ioc == ((void*)0))
  return;

 BUG_ON(atomic_long_read(&ioc->refcount) <= 0);





 if (atomic_long_dec_and_test(&ioc->refcount)) {
  spin_lock_irqsave(&ioc->lock, flags);
  if (!hlist_empty(&ioc->icq_list))
   queue_work(system_power_efficient_wq,
     &ioc->release_work);
  else
   free_ioc = 1;
  spin_unlock_irqrestore(&ioc->lock, flags);
 }

 if (free_ioc)
  kmem_cache_free(iocontext_cachep, ioc);
}
