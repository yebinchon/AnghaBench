
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int size; TYPE_3__* entries; } ;
struct st_brotli_context_t {TYPE_2__ bufs; int state; } ;
struct TYPE_8__ {size_t len; scalar_t__ raw; TYPE_1__* callbacks; } ;
typedef TYPE_3__ h2o_sendvec_t ;
typedef int h2o_send_state_t ;
typedef int h2o_compress_context_t ;
struct TYPE_6__ {scalar_t__ flatten; } ;
typedef int BrotliEncoderOperation ;


 int BROTLI_OPERATION_FINISH ;
 int BROTLI_OPERATION_FLUSH ;
 int BROTLI_OPERATION_PROCESS ;
 scalar_t__ BrotliEncoderHasMoreOutput (int ) ;
 int assert (int) ;
 int compress_core (struct st_brotli_context_t*,int ,int const**,size_t*) ;
 scalar_t__ h2o_send_state_is_in_progress (int ) ;
 scalar_t__ h2o_sendvec_flatten_raw ;
 int shrink_buf (struct st_brotli_context_t*,int) ;

__attribute__((used)) static h2o_send_state_t compress_(h2o_compress_context_t *_self, h2o_sendvec_t *inbufs, size_t inbufcnt, h2o_send_state_t state,
                                  h2o_sendvec_t **outbufs, size_t *outbufcnt)
{
    struct st_brotli_context_t *self = (void *)_self;
    BrotliEncoderOperation final_op = h2o_send_state_is_in_progress(state) ? BROTLI_OPERATION_FLUSH : BROTLI_OPERATION_FINISH;
    const uint8_t *src;
    size_t i, srclen;

    shrink_buf(self, 1);
    self->bufs.entries[0].len = 0;


    if (inbufcnt != 0) {
        for (i = 0; i < inbufcnt; ++i) {
            assert(inbufs[i].callbacks->flatten == h2o_sendvec_flatten_raw);
            src = (void *)inbufs[i].raw;
            srclen = inbufs[i].len;
            BrotliEncoderOperation op = i + 1 == inbufcnt ? final_op : BROTLI_OPERATION_PROCESS;
            while (srclen != 0)
                compress_core(self, op, &src, &srclen);
        }
    } else {
        src = ((void*)0);
        srclen = 0;
        compress_core(self, final_op, &src, &srclen);
    }


    while (BrotliEncoderHasMoreOutput(self->state)) {
        src = ((void*)0);
        srclen = 0;
        compress_core(self, final_op, &src, &srclen);
    }

    *outbufs = self->bufs.entries;
    *outbufcnt = self->bufs.size - (self->bufs.entries[self->bufs.size - 1].len == 0);

    return state;
}
