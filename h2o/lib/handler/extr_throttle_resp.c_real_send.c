
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t size; TYPE_5__* entries; } ;
struct TYPE_7__ {int stream_state; TYPE_1__ bufs; } ;
struct TYPE_8__ {scalar_t__ tokens; int timeout_entry; TYPE_2__ state; int req; int super; } ;
typedef TYPE_3__ throttle_resp_t ;
struct TYPE_9__ {scalar_t__ len; } ;


 int assert (int) ;
 int h2o_ostream_send_next (int *,int ,TYPE_5__*,size_t,int ) ;
 int h2o_send_state_is_in_progress (int ) ;
 int h2o_timer_unlink (int *) ;

__attribute__((used)) static void real_send(throttle_resp_t *self)
{

    assert(self->tokens > 0);
    size_t i, token_consume;

    token_consume = 0;

    for (i = 0; i < self->state.bufs.size; i++) {
        token_consume += self->state.bufs.entries[i].len;
    }

    self->tokens -= token_consume;

    h2o_ostream_send_next(&self->super, self->req, self->state.bufs.entries, self->state.bufs.size, self->state.stream_state);
    if (!h2o_send_state_is_in_progress(self->state.stream_state))
        h2o_timer_unlink(&self->timeout_entry);
}
