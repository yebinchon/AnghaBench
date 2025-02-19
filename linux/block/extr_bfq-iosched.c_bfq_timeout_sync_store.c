
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elevator_queue {struct bfq_data* elevator_data; } ;
struct bfq_data {scalar_t__ bfq_user_max_budget; int bfq_max_budget; int bfq_timeout; } ;
typedef int ssize_t ;


 unsigned long INT_MAX ;
 int bfq_calc_max_budget (struct bfq_data*) ;
 int bfq_var_store (unsigned long*,char const*) ;
 int msecs_to_jiffies (unsigned long) ;

__attribute__((used)) static ssize_t bfq_timeout_sync_store(struct elevator_queue *e,
          const char *page, size_t count)
{
 struct bfq_data *bfqd = e->elevator_data;
 unsigned long __data;
 int ret;

 ret = bfq_var_store(&__data, (page));
 if (ret)
  return ret;

 if (__data < 1)
  __data = 1;
 else if (__data > INT_MAX)
  __data = INT_MAX;

 bfqd->bfq_timeout = msecs_to_jiffies(__data);
 if (bfqd->bfq_user_max_budget == 0)
  bfqd->bfq_max_budget = bfq_calc_max_budget(bfqd);

 return count;
}
