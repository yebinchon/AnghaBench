
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int timeout; int * loop; } ;
struct TYPE_5__ {TYPE_1__ _interval_cb; } ;
typedef TYPE_2__ h2o_socketpool_t ;
typedef int h2o_loop_t ;


 int CHECK_EXPIRATION_MIN_INTERVAL ;
 int h2o_timer_init (int *,int ) ;
 int h2o_timer_link (int *,int ,int *) ;
 int on_timeout ;

void h2o_socketpool_register_loop(h2o_socketpool_t *pool, h2o_loop_t *loop)
{
    if (pool->_interval_cb.loop != ((void*)0))
        return;

    pool->_interval_cb.loop = loop;
    h2o_timer_init(&pool->_interval_cb.timeout, on_timeout);
    h2o_timer_link(loop, CHECK_EXPIRATION_MIN_INTERVAL, &pool->_interval_cb.timeout);
}
