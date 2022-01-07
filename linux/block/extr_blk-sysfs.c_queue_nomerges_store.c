
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int QUEUE_FLAG_NOMERGES ;
 int QUEUE_FLAG_NOXMERGES ;
 int blk_queue_flag_clear (int ,struct request_queue*) ;
 int blk_queue_flag_set (int ,struct request_queue*) ;
 scalar_t__ queue_var_store (unsigned long*,char const*,size_t) ;

__attribute__((used)) static ssize_t queue_nomerges_store(struct request_queue *q, const char *page,
        size_t count)
{
 unsigned long nm;
 ssize_t ret = queue_var_store(&nm, page, count);

 if (ret < 0)
  return ret;

 blk_queue_flag_clear(QUEUE_FLAG_NOMERGES, q);
 blk_queue_flag_clear(QUEUE_FLAG_NOXMERGES, q);
 if (nm == 2)
  blk_queue_flag_set(QUEUE_FLAG_NOMERGES, q);
 else if (nm)
  blk_queue_flag_set(QUEUE_FLAG_NOXMERGES, q);

 return ret;
}
