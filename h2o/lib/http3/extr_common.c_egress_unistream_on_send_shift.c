
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct st_h2o_http3_egress_unistream_t {int sendbuf; } ;
struct TYPE_3__ {struct st_h2o_http3_egress_unistream_t* data; } ;
typedef TYPE_1__ quicly_stream_t ;


 int h2o_buffer_consume (int *,size_t) ;

__attribute__((used)) static void egress_unistream_on_send_shift(quicly_stream_t *qs, size_t delta)
{
    struct st_h2o_http3_egress_unistream_t *stream = qs->data;
    h2o_buffer_consume(&stream->sendbuf, delta);
}
