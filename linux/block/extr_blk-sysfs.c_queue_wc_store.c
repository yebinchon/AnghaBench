
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int QUEUE_FLAG_WC ;
 int blk_queue_flag_clear (int ,struct request_queue*) ;
 int blk_queue_flag_set (int ,struct request_queue*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static ssize_t queue_wc_store(struct request_queue *q, const char *page,
         size_t count)
{
 int set = -1;

 if (!strncmp(page, "write back", 10))
  set = 1;
 else if (!strncmp(page, "write through", 13) ||
   !strncmp(page, "none", 4))
  set = 0;

 if (set == -1)
  return -EINVAL;

 if (set)
  blk_queue_flag_set(QUEUE_FLAG_WC, q);
 else
  blk_queue_flag_clear(QUEUE_FLAG_WC, q);

 return count;
}
