
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ int32_t ;
struct TYPE_4__ {scalar_t__ _now_millisec; int _timeouts; } ;
typedef TYPE_1__ h2o_evloop_t ;


 scalar_t__ h2o_timerwheel_get_wake_at (int ) ;
 int update_now (TYPE_1__*) ;

int32_t adjust_max_wait(h2o_evloop_t *loop, int32_t max_wait)
{
    uint64_t wake_at = h2o_timerwheel_get_wake_at(loop->_timeouts);

    update_now(loop);

    if (wake_at <= loop->_now_millisec) {
        max_wait = 0;
    } else {
        uint64_t delta = wake_at - loop->_now_millisec;
        if (delta < max_wait)
            max_wait = (int32_t)delta;
    }

    return max_wait;
}
