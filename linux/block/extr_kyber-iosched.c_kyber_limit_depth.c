
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kyber_queue_data {int async_depth; } ;
struct blk_mq_alloc_data {int shallow_depth; TYPE_2__* q; } ;
struct TYPE_4__ {TYPE_1__* elevator; } ;
struct TYPE_3__ {struct kyber_queue_data* elevator_data; } ;


 int op_is_sync (unsigned int) ;

__attribute__((used)) static void kyber_limit_depth(unsigned int op, struct blk_mq_alloc_data *data)
{




 if (!op_is_sync(op)) {
  struct kyber_queue_data *kqd = data->q->elevator->elevator_data;

  data->shallow_depth = kqd->async_depth;
 }
}
