
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cn_callback_entry {TYPE_1__* pdev; int refcnt; } ;
struct TYPE_2__ {int refcnt; } ;


 int atomic_dec (int *) ;
 int kfree (struct cn_callback_entry*) ;
 int refcount_dec_and_test (int *) ;

void cn_queue_release_callback(struct cn_callback_entry *cbq)
{
 if (!refcount_dec_and_test(&cbq->refcnt))
  return;

 atomic_dec(&cbq->pdev->refcnt);
 kfree(cbq);
}
