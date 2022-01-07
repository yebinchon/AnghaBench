
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {size_t size; int * entries; } ;
struct TYPE_7__ {int stream_state; TYPE_6__ bufs; } ;
struct TYPE_8__ {scalar_t__ tokens; TYPE_1__ state; } ;
typedef TYPE_2__ throttle_resp_t ;
typedef int h2o_sendvec_t ;
typedef int h2o_send_state_t ;
struct TYPE_9__ {int pool; } ;
typedef TYPE_3__ h2o_req_t ;
typedef int h2o_ostream_t ;


 int h2o_vector_reserve (int *,TYPE_6__*,size_t) ;
 int real_send (TYPE_2__*) ;

__attribute__((used)) static void on_send(h2o_ostream_t *_self, h2o_req_t *req, h2o_sendvec_t *inbufs, size_t inbufcnt, h2o_send_state_t state)
{
    throttle_resp_t *self = (void *)_self;
    size_t i;


    h2o_vector_reserve(&req->pool, &self->state.bufs, inbufcnt);

    for (i = 0; i < inbufcnt; ++i) {
        self->state.bufs.entries[i] = inbufs[i];
    }
    self->state.bufs.size = inbufcnt;
    self->state.stream_state = state;


    if (self->tokens > 0)
        real_send(self);
}
