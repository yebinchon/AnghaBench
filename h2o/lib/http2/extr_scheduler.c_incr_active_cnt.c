
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* _parent; } ;
struct TYPE_7__ {int _active_cnt; TYPE_1__ node; int weight; int _queue_node; } ;
typedef TYPE_2__ h2o_http2_scheduler_openref_t ;
struct TYPE_8__ {int * _parent; } ;
typedef TYPE_3__ h2o_http2_scheduler_node_t ;


 int get_queue (TYPE_3__*) ;
 int queue_set (int ,int *,int ) ;

__attribute__((used)) static void incr_active_cnt(h2o_http2_scheduler_node_t *node)
{
    h2o_http2_scheduler_openref_t *ref;


    if (node->_parent == ((void*)0))
        return;

    ref = (h2o_http2_scheduler_openref_t *)node;
    if (++ref->_active_cnt != 1)
        return;

    queue_set(get_queue(ref->node._parent), &ref->_queue_node, ref->weight);

    incr_active_cnt(ref->node._parent);
}
