
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int h2o_http2_scheduler_run_cb ;
struct TYPE_4__ {int * _queue; } ;
typedef TYPE_1__ h2o_http2_scheduler_node_t ;


 int proceed (TYPE_1__*,int ,void*) ;
 int queue_is_empty (int *) ;

int h2o_http2_scheduler_run(h2o_http2_scheduler_node_t *root, h2o_http2_scheduler_run_cb cb, void *cb_arg)
{
    if (root->_queue != ((void*)0)) {
        while (!queue_is_empty(root->_queue)) {
            int bail_out = proceed(root, cb, cb_arg);
            if (bail_out)
                return bail_out;
        }
    }
    return 0;
}
