
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int discard_granularity; } ;
struct request_queue {TYPE_1__ limits; } ;
typedef int ssize_t ;


 int queue_var_show (int ,char*) ;

__attribute__((used)) static ssize_t queue_discard_granularity_show(struct request_queue *q, char *page)
{
 return queue_var_show(q->limits.discard_granularity, page);
}
