
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EINVAL ;
 int QUEUE_FLAG_SAME_COMP ;
 int QUEUE_FLAG_SAME_FORCE ;
 int blk_queue_flag_clear (int ,struct request_queue*) ;
 int blk_queue_flag_set (int ,struct request_queue*) ;
 scalar_t__ queue_var_store (unsigned long*,char const*,size_t) ;

__attribute__((used)) static ssize_t
queue_rq_affinity_store(struct request_queue *q, const char *page, size_t count)
{
 ssize_t ret = -EINVAL;
 return ret;
}
