
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct request_queue {TYPE_4__** queue_hw_ctx; } ;
struct TYPE_8__ {TYPE_3__* sched_tags; } ;
struct TYPE_5__ {unsigned int shift; } ;
struct TYPE_6__ {TYPE_1__ sb; } ;
struct TYPE_7__ {TYPE_2__ bitmap_tags; } ;



__attribute__((used)) static unsigned int kyber_sched_tags_shift(struct request_queue *q)
{




 return q->queue_hw_ctx[0]->sched_tags->bitmap_tags.sb.shift;
}
