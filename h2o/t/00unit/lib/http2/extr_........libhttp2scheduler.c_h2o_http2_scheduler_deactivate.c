
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int node; scalar_t__ _self_is_active; } ;
typedef TYPE_1__ h2o_http2_scheduler_openref_t ;


 int decr_active_cnt (int *) ;

void h2o_http2_scheduler_deactivate(h2o_http2_scheduler_openref_t *ref)
{
    if (!ref->_self_is_active)
        return;
    ref->_self_is_active = 0;
    decr_active_cnt(&ref->node);
}
