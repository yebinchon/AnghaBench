
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_3__* _parent; } ;
struct TYPE_12__ {scalar_t__ _active_cnt; TYPE_1__ node; int weight; int _queue_node; int _all_link; } ;
typedef TYPE_2__ h2o_http2_scheduler_openref_t ;
struct TYPE_13__ {int _all_refs; } ;
typedef TYPE_3__ h2o_http2_scheduler_node_t ;


 int convert_to_exclusive (TYPE_3__*,TYPE_2__*) ;
 int decr_active_cnt (TYPE_3__*) ;
 int get_queue (TYPE_3__*) ;
 int h2o_linklist_insert (int *,int *) ;
 int h2o_linklist_unlink (int *) ;
 int incr_active_cnt (TYPE_3__*) ;
 int queue_set (int ,int *,int ) ;
 int queue_unset (int *) ;

__attribute__((used)) static void do_rebind(h2o_http2_scheduler_openref_t *ref, h2o_http2_scheduler_node_t *new_parent, int exclusive)
{

    h2o_linklist_unlink(&ref->_all_link);
    h2o_linklist_insert(&new_parent->_all_refs, &ref->_all_link);

    if (ref->_active_cnt != 0) {
        queue_unset(&ref->_queue_node);
        queue_set(get_queue(new_parent), &ref->_queue_node, ref->weight);
        decr_active_cnt(ref->node._parent);
        incr_active_cnt(new_parent);
    }

    ref->node._parent = new_parent;

    if (exclusive)
        convert_to_exclusive(new_parent, ref);
}
