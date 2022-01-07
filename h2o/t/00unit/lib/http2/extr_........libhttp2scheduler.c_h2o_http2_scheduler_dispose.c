
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * _queue; } ;
typedef TYPE_1__ h2o_http2_scheduler_node_t ;


 int free (int *) ;

void h2o_http2_scheduler_dispose(h2o_http2_scheduler_node_t *root)
{
    free(root->_queue);
    root->_queue = ((void*)0);
}
