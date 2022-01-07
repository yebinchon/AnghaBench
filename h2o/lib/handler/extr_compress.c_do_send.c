
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_compress_encoder_t {int super; int compressor; } ;
typedef int h2o_sendvec_t ;
typedef int h2o_send_state_t ;
typedef int h2o_req_t ;
typedef int h2o_ostream_t ;


 int h2o_compress_transform (int ,int *,int *,size_t,int ,int **,size_t*) ;
 int h2o_ostream_send_next (int *,int *,int *,size_t,int ) ;
 scalar_t__ h2o_send_state_is_in_progress (int ) ;

__attribute__((used)) static void do_send(h2o_ostream_t *_self, h2o_req_t *req, h2o_sendvec_t *inbufs, size_t inbufcnt, h2o_send_state_t state)
{
    struct st_compress_encoder_t *self = (void *)_self;
    h2o_sendvec_t *outbufs;
    size_t outbufcnt;

    if (inbufcnt == 0 && h2o_send_state_is_in_progress(state)) {
        h2o_ostream_send_next(&self->super, req, inbufs, inbufcnt, state);
        return;
    }

    state = h2o_compress_transform(self->compressor, req, inbufs, inbufcnt, state, &outbufs, &outbufcnt);
    h2o_ostream_send_next(&self->super, req, outbufs, outbufcnt, state);
}
