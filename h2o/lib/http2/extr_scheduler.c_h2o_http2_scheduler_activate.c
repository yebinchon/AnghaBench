
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int _self_is_active; int node; } ;
typedef TYPE_1__ h2o_http2_scheduler_openref_t ;


 int incr_active_cnt (int *) ;

void h2o_http2_scheduler_activate(h2o_http2_scheduler_openref_t *ref)
{
    if (ref->_self_is_active)
        return;
    ref->_self_is_active = 1;
    incr_active_cnt(&ref->node);
}
