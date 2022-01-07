
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* backing_dev_info; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_2__ {unsigned long ra_pages; } ;


 int PAGE_SHIFT ;
 scalar_t__ queue_var_store (unsigned long*,char const*,size_t) ;

__attribute__((used)) static ssize_t
queue_ra_store(struct request_queue *q, const char *page, size_t count)
{
 unsigned long ra_kb;
 ssize_t ret = queue_var_store(&ra_kb, page, count);

 if (ret < 0)
  return ret;

 q->backing_dev_info->ra_pages = ra_kb >> (PAGE_SHIFT - 10);

 return ret;
}
