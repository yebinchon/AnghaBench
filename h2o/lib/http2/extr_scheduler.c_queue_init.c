
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int anchor257; int * anchors; scalar_t__ offset; scalar_t__ bits; } ;
typedef TYPE_1__ h2o_http2_scheduler_queue_t ;


 int h2o_linklist_init_anchor (int *) ;

__attribute__((used)) static void queue_init(h2o_http2_scheduler_queue_t *queue)
{
    size_t i;
    queue->bits = 0;
    queue->offset = 0;
    for (i = 0; i != sizeof(queue->anchors) / sizeof(queue->anchors[0]); ++i)
        h2o_linklist_init_anchor(queue->anchors + i);
    h2o_linklist_init_anchor(&queue->anchor257);
}
