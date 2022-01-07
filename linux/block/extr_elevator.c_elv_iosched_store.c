
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
typedef size_t ssize_t ;


 int __elevator_change (struct request_queue*,char const*) ;
 int elv_support_iosched (struct request_queue*) ;
 int queue_is_mq (struct request_queue*) ;

ssize_t elv_iosched_store(struct request_queue *q, const char *name,
     size_t count)
{
 int ret;

 if (!queue_is_mq(q) || !elv_support_iosched(q))
  return count;

 ret = __elevator_change(q, name);
 if (!ret)
  return count;

 return ret;
}
