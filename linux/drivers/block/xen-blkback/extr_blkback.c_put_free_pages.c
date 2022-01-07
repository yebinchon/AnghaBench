
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_blkif_ring {int free_pages_num; int free_pages_lock; int free_pages; } ;
struct page {int lru; } ;


 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void put_free_pages(struct xen_blkif_ring *ring, struct page **page,
                                  int num)
{
 unsigned long flags;
 int i;

 spin_lock_irqsave(&ring->free_pages_lock, flags);
 for (i = 0; i < num; i++)
  list_add(&page[i]->lru, &ring->free_pages);
 ring->free_pages_num += num;
 spin_unlock_irqrestore(&ring->free_pages_lock, flags);
}
