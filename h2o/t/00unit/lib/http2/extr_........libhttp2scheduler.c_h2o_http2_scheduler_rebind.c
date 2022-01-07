
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_9__ {struct TYPE_9__* _parent; int _all_refs; } ;
struct TYPE_8__ {int weight; TYPE_2__ node; } ;
typedef TYPE_1__ h2o_http2_scheduler_openref_t ;
typedef TYPE_2__ h2o_http2_scheduler_node_t ;


 int assert (int) ;
 int do_rebind (TYPE_1__*,TYPE_2__*,int) ;
 int h2o_http2_scheduler_is_open (TYPE_1__*) ;
 int h2o_linklist_is_empty (int *) ;

void h2o_http2_scheduler_rebind(h2o_http2_scheduler_openref_t *ref, h2o_http2_scheduler_node_t *new_parent, uint16_t weight,
                                int exclusive)
{
    assert(h2o_http2_scheduler_is_open(ref));
    assert(&ref->node != new_parent);
    assert(1 <= weight);
    assert(weight <= 257);


    if (ref->node._parent == new_parent && ref->weight == weight && !exclusive)
        return;

    ref->weight = weight;



    if (!h2o_linklist_is_empty(&ref->node._all_refs)) {
        h2o_http2_scheduler_node_t *t;
        for (t = new_parent; t->_parent != ((void*)0); t = t->_parent) {
            if (t->_parent == &ref->node) {

                h2o_http2_scheduler_openref_t *new_parent_ref = (void *)new_parent;
                do_rebind(new_parent_ref, ref->node._parent, 0);
                break;
            }
        }
    }

    do_rebind(ref, new_parent, exclusive);
}
