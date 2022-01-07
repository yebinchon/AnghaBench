
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int head; int * tail_ref; } ;
struct TYPE_8__ {int _now_millisec; int _timeouts; TYPE_1__ _statechanged; } ;
typedef TYPE_2__ h2o_evloop_t ;


 TYPE_2__* h2o_mem_alloc (size_t) ;
 int h2o_timerwheel_create (int,int ) ;
 int memset (TYPE_2__*,int ,size_t) ;
 int update_now (TYPE_2__*) ;

h2o_evloop_t *create_evloop(size_t sz)
{
    h2o_evloop_t *loop = h2o_mem_alloc(sz);

    memset(loop, 0, sz);
    loop->_statechanged.tail_ref = &loop->_statechanged.head;
    update_now(loop);

    loop->_timeouts = h2o_timerwheel_create(3, loop->_now_millisec);

    return loop;
}
