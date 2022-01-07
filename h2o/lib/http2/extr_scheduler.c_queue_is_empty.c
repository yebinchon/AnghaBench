
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bits; int anchor257; } ;
typedef TYPE_1__ h2o_http2_scheduler_queue_t ;


 scalar_t__ h2o_linklist_is_empty (int *) ;

__attribute__((used)) static int queue_is_empty(h2o_http2_scheduler_queue_t *queue)
{
    return queue->bits == 0 && h2o_linklist_is_empty(&queue->anchor257);
}
