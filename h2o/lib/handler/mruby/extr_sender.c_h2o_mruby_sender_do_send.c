
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ len; } ;
typedef TYPE_1__ h2o_sendvec_t ;
typedef scalar_t__ h2o_send_state_t ;
struct TYPE_8__ {int final_sent; scalar_t__ bytes_left; } ;
typedef TYPE_2__ h2o_mruby_sender_t ;
struct TYPE_9__ {int req; TYPE_2__* sender; } ;
typedef TYPE_3__ h2o_mruby_generator_t ;


 scalar_t__ H2O_SEND_STATE_ERROR ;
 scalar_t__ H2O_SEND_STATE_FINAL ;
 scalar_t__ SIZE_MAX ;
 int assert (int) ;
 int h2o_send_state_is_in_progress (scalar_t__) ;
 int h2o_sendvec (int ,TYPE_1__*,size_t,scalar_t__) ;

void h2o_mruby_sender_do_send(h2o_mruby_generator_t *generator, h2o_sendvec_t *bufs, size_t bufcnt, h2o_send_state_t state)
{
    h2o_mruby_sender_t *sender = generator->sender;
    assert(!sender->final_sent);

    if (sender->bytes_left != SIZE_MAX) {
        int i = 0;
        for (i = 0; i != bufcnt && sender->bytes_left > 0; ++i) {
            if (sender->bytes_left < bufs[i].len)
                bufs[i].len = sender->bytes_left;
            sender->bytes_left -= bufs[i].len;
        }
        bufcnt = i;
    }

    if (state == H2O_SEND_STATE_FINAL) {
        if (!(sender->bytes_left == 0 || sender->bytes_left == SIZE_MAX)) {

            state = H2O_SEND_STATE_ERROR;
        }
    }

    if (!h2o_send_state_is_in_progress(state))
        sender->final_sent = 1;

    h2o_sendvec(generator->req, bufs, bufcnt, state);
}
