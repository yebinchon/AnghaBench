
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {size_t size; TYPE_6__* entries; } ;
struct TYPE_13__ {size_t off_within_first_vec; size_t min_index_to_addref; int proceed_called; TYPE_2__ vecs; } ;
struct st_h2o_http3_server_stream_t {int send_state; TYPE_4__* quic; TYPE_3__ sendbuf; int req; } ;
struct TYPE_15__ {struct st_h2o_http3_server_stream_t* data; } ;
typedef TYPE_5__ quicly_stream_t ;
struct TYPE_16__ {size_t len; TYPE_1__* callbacks; } ;
struct TYPE_14__ {int sendstate; } ;
struct TYPE_11__ {int (* update_refcnt ) (TYPE_6__*,int *,int ) ;} ;




 int assert (int) ;
 int memmove (TYPE_6__*,TYPE_6__*,size_t) ;
 int quicly_sendstate_transfer_complete (int *) ;
 int stub1 (TYPE_6__*,int *,int ) ;
 int stub2 (TYPE_6__*,int *,int ) ;

__attribute__((used)) static void on_send_shift(quicly_stream_t *qs, size_t delta)
{
    struct st_h2o_http3_server_stream_t *stream = qs->data;
    size_t i;

    assert(delta != 0);
    assert(stream->sendbuf.vecs.size != 0);

    size_t bytes_avail_in_first_vec = stream->sendbuf.vecs.entries[0].len - stream->sendbuf.off_within_first_vec;
    if (delta < bytes_avail_in_first_vec) {
        stream->sendbuf.off_within_first_vec += delta;
        return;
    }
    delta -= bytes_avail_in_first_vec;
    stream->sendbuf.off_within_first_vec = 0;
    if (stream->sendbuf.min_index_to_addref != 0)
        stream->sendbuf.vecs.entries[0].callbacks->update_refcnt(stream->sendbuf.vecs.entries, &stream->req, 0);

    for (i = 1; delta != 0; ++i) {
        assert(i < stream->sendbuf.vecs.size);
        if (delta < stream->sendbuf.vecs.entries[i].len) {
            stream->sendbuf.off_within_first_vec = delta;
            break;
        }
        delta -= stream->sendbuf.vecs.entries[i].len;
        if (i < stream->sendbuf.min_index_to_addref)
            stream->sendbuf.vecs.entries[i].callbacks->update_refcnt(stream->sendbuf.vecs.entries + i, &stream->req, 0);
    }
    memmove(stream->sendbuf.vecs.entries, stream->sendbuf.vecs.entries + i,
            (stream->sendbuf.vecs.size - i) * sizeof(stream->sendbuf.vecs.entries[0]));
    stream->sendbuf.vecs.size -= i;
    if (stream->sendbuf.min_index_to_addref <= i) {
        stream->sendbuf.min_index_to_addref = 0;
    } else {
        stream->sendbuf.min_index_to_addref -= i;
    }

    if (stream->sendbuf.vecs.size == 0) {
        switch (stream->send_state) {
        case 128:
            assert(stream->sendbuf.proceed_called);
            break;
        case 129:
            assert(quicly_sendstate_transfer_complete(&stream->quic->sendstate));
            break;
        default:
            assert(!"unexpected state");
            break;
        }
    }
}
