
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * _queue; } ;
typedef TYPE_1__ h2o_http2_scheduler_node_t ;


 int queue_is_empty (int *) ;

int h2o_http2_scheduler_is_active(h2o_http2_scheduler_node_t *root)
{
    return root->_queue != ((void*)0) && !queue_is_empty(root->_queue);
}
