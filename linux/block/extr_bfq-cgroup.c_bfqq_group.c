
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfq_queue {TYPE_1__* bfqd; } ;
struct bfq_group {int dummy; } ;
struct TYPE_2__ {struct bfq_group* root_group; } ;



struct bfq_group *bfqq_group(struct bfq_queue *bfqq)
{
 return bfqq->bfqd->root_group;
}
