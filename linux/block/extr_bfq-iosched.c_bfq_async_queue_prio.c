
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_queue {int dummy; } ;
struct bfq_group {struct bfq_queue* async_idle_bfqq; struct bfq_queue*** async_bfqq; } ;
struct bfq_data {int dummy; } ;






 int IOPRIO_NORM ;

__attribute__((used)) static struct bfq_queue **bfq_async_queue_prio(struct bfq_data *bfqd,
            struct bfq_group *bfqg,
            int ioprio_class, int ioprio)
{
 switch (ioprio_class) {
 case 128:
  return &bfqg->async_bfqq[0][ioprio];
 case 129:
  ioprio = IOPRIO_NORM;

 case 131:
  return &bfqg->async_bfqq[1][ioprio];
 case 130:
  return &bfqg->async_idle_bfqq;
 default:
  return ((void*)0);
 }
}
