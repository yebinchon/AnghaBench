
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long max_sectors; scalar_t__ max_dev_sectors; } ;
struct request_queue {int queue_lock; TYPE_2__* backing_dev_info; TYPE_1__ limits; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_4__ {unsigned long io_pages; } ;


 scalar_t__ EINVAL ;
 int PAGE_SHIFT ;
 unsigned long min_not_zero (unsigned long,unsigned long) ;
 int queue_max_hw_sectors (struct request_queue*) ;
 scalar_t__ queue_var_store (unsigned long*,char const*,size_t) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static ssize_t
queue_max_sectors_store(struct request_queue *q, const char *page, size_t count)
{
 unsigned long max_sectors_kb,
  max_hw_sectors_kb = queue_max_hw_sectors(q) >> 1,
   page_kb = 1 << (PAGE_SHIFT - 10);
 ssize_t ret = queue_var_store(&max_sectors_kb, page, count);

 if (ret < 0)
  return ret;

 max_hw_sectors_kb = min_not_zero(max_hw_sectors_kb, (unsigned long)
      q->limits.max_dev_sectors >> 1);

 if (max_sectors_kb > max_hw_sectors_kb || max_sectors_kb < page_kb)
  return -EINVAL;

 spin_lock_irq(&q->queue_lock);
 q->limits.max_sectors = max_sectors_kb << 1;
 q->backing_dev_info->io_pages = max_sectors_kb >> (PAGE_SHIFT - 10);
 spin_unlock_irq(&q->queue_lock);

 return ret;
}
