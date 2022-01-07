
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardinfo {int lock; } ;
struct blk_plug_cb {struct cardinfo* data; } ;


 int activate (struct cardinfo*) ;
 int kfree (struct blk_plug_cb*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void mm_unplug(struct blk_plug_cb *cb, bool from_schedule)
{
 struct cardinfo *card = cb->data;

 spin_lock_irq(&card->lock);
 activate(card);
 spin_unlock_irq(&card->lock);
 kfree(cb);
}
