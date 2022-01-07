
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * loop; int timeout; } ;
struct TYPE_5__ {TYPE_1__ _interval_cb; } ;
typedef TYPE_2__ h2o_socketpool_t ;
typedef int h2o_loop_t ;


 int h2o_timer_unlink (int *) ;

void h2o_socketpool_unregister_loop(h2o_socketpool_t *pool, h2o_loop_t *loop)
{
    if (pool->_interval_cb.loop != loop)
        return;
    h2o_timer_unlink(&pool->_interval_cb.timeout);
    pool->_interval_cb.loop = ((void*)0);
}
