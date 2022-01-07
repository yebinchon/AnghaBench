
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int h2o_http2_scheduler_queue_t ;
struct TYPE_3__ {int * _queue; } ;
typedef TYPE_1__ h2o_http2_scheduler_node_t ;


 int * h2o_mem_alloc (int) ;
 int queue_init (int *) ;

__attribute__((used)) static h2o_http2_scheduler_queue_t *get_queue(h2o_http2_scheduler_node_t *node)
{
    if (node->_queue == ((void*)0)) {
        node->_queue = h2o_mem_alloc(sizeof(*node->_queue));
        queue_init(node->_queue);
    }
    return node->_queue;
}
