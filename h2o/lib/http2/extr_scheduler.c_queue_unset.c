
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int _link; } ;
typedef TYPE_1__ h2o_http2_scheduler_queue_node_t ;


 int assert (int ) ;
 int h2o_linklist_is_linked (int *) ;
 int h2o_linklist_unlink (int *) ;

__attribute__((used)) static void queue_unset(h2o_http2_scheduler_queue_node_t *node)
{
    assert(h2o_linklist_is_linked(&node->_link));
    h2o_linklist_unlink(&node->_link);
}
