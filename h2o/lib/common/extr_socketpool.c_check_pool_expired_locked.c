
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_5__ {int timeout; int * loop; } ;
struct TYPE_6__ {TYPE_1__ _interval_cb; } ;
typedef TYPE_2__ h2o_socketpool_t ;
typedef int h2o_loop_t ;


 scalar_t__ CHECK_EXPIRATION_MIN_INTERVAL ;
 scalar_t__ UINT64_MAX ;
 scalar_t__ destroy_expired_locked (TYPE_2__*) ;
 int h2o_timer_is_linked (int *) ;
 int h2o_timer_link (int *,scalar_t__,int *) ;

__attribute__((used)) static void check_pool_expired_locked(h2o_socketpool_t *pool, h2o_loop_t *this_loop)
{
    uint64_t next_expired = destroy_expired_locked(pool);
    if (next_expired != UINT64_MAX) {
        if (this_loop == pool->_interval_cb.loop && !h2o_timer_is_linked(&pool->_interval_cb.timeout)) {
            if (next_expired < CHECK_EXPIRATION_MIN_INTERVAL)
                next_expired = CHECK_EXPIRATION_MIN_INTERVAL;
            h2o_timer_link(pool->_interval_cb.loop, next_expired, &pool->_interval_cb.timeout);
        }
    }
}
