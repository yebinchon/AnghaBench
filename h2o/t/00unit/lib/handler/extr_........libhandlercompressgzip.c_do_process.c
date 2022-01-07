
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ do_transform; } ;
struct TYPE_8__ {TYPE_4__* entries; } ;
struct st_gzip_context_t {scalar_t__ zs_is_open; int zs; TYPE_3__ super; TYPE_2__ bufs; } ;
typedef int processor ;
struct TYPE_10__ {scalar_t__ len; int raw; int member_0; TYPE_1__* callbacks; } ;
typedef TYPE_4__ h2o_sendvec_t ;
typedef int h2o_send_state_t ;
typedef int h2o_compress_context_t ;
struct TYPE_7__ {scalar_t__ flatten; } ;


 int Z_FINISH ;
 int Z_NO_FLUSH ;
 int Z_SYNC_FLUSH ;
 int assert (int) ;
 int deflateEnd (int *) ;
 scalar_t__ do_compress ;
 scalar_t__ h2o_send_state_is_in_progress (int ) ;
 scalar_t__ h2o_sendvec_flatten_raw ;
 int inflateEnd (int *) ;
 size_t process_chunk (struct st_gzip_context_t*,int ,scalar_t__,int ,size_t,int ) ;

__attribute__((used)) static h2o_send_state_t do_process(h2o_compress_context_t *_self, h2o_sendvec_t *inbufs, size_t inbufcnt, h2o_send_state_t state,
                                   h2o_sendvec_t **outbufs, size_t *outbufcnt, processor proc)
{
    struct st_gzip_context_t *self = (void *)_self;
    size_t outbufindex;
    h2o_sendvec_t *last_buf;

    outbufindex = 0;
    self->bufs.entries[0].len = 0;

    if (inbufcnt != 0) {
        size_t i;
        for (i = 0; i != inbufcnt - 1; ++i) {
            assert(inbufs[i].callbacks->flatten == h2o_sendvec_flatten_raw);
            outbufindex = process_chunk(self, inbufs[i].raw, inbufs[i].len, Z_NO_FLUSH, outbufindex, proc);
        }
        assert(inbufs[i].callbacks->flatten == h2o_sendvec_flatten_raw);
        last_buf = inbufs + i;
    } else {
        static const h2o_sendvec_t zero_buf = {0};
        last_buf = (h2o_sendvec_t *)&zero_buf;
    }
    outbufindex = process_chunk(self, last_buf->raw, last_buf->len, h2o_send_state_is_in_progress(state) ? Z_SYNC_FLUSH : Z_FINISH,
                                outbufindex, proc);

    *outbufs = self->bufs.entries;
    *outbufcnt = outbufindex + 1;

    if (!h2o_send_state_is_in_progress(state)) {
        if (self->super.do_transform == do_compress) {
            deflateEnd(&self->zs);
        } else {
            inflateEnd(&self->zs);
        }
        self->zs_is_open = 0;
    }

    return state;
}
