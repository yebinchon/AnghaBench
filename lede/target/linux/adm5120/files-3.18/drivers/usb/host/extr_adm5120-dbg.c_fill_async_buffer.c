
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_buffer {int page; struct admhcd* ahcd; } ;
struct admhcd {int lock; int ed_head; } ;
typedef size_t ssize_t ;


 int PAGE_SIZE ;
 size_t show_list (struct admhcd*,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static ssize_t fill_async_buffer(struct debug_buffer *buf)
{
 struct admhcd *ahcd;
 size_t temp;
 unsigned long flags;

 ahcd = buf->ahcd;

 spin_lock_irqsave(&ahcd->lock, flags);
 temp = show_list(ahcd, buf->page, PAGE_SIZE, ahcd->ed_head);
 spin_unlock_irqrestore(&ahcd->lock, flags);

 return temp;
}
