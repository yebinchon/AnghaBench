
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int quicly_stream_t ;
typedef int quicly_stream_id_t ;
typedef int quicly_conn_t ;
struct TYPE_3__ {scalar_t__ off; scalar_t__ base; } ;
typedef TYPE_1__ ptls_buffer_t ;


 int assert (int ) ;
 int * quicly_get_stream (int *,int ) ;
 int quicly_streambuf_egress_write (int *,scalar_t__,size_t) ;

__attribute__((used)) static int write_crypto_data(quicly_conn_t *conn, ptls_buffer_t *tlsbuf, size_t epoch_offsets[5])
{
    size_t epoch;
    int ret;

    if (tlsbuf->off == 0)
        return 0;

    for (epoch = 0; epoch < 4; ++epoch) {
        size_t len = epoch_offsets[epoch + 1] - epoch_offsets[epoch];
        if (len == 0)
            continue;
        quicly_stream_t *stream = quicly_get_stream(conn, -(quicly_stream_id_t)(1 + epoch));
        assert(stream != ((void*)0));
        if ((ret = quicly_streambuf_egress_write(stream, tlsbuf->base + epoch_offsets[epoch], len)) != 0)
            return ret;
    }

    return 0;
}
