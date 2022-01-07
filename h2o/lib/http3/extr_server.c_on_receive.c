
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buf; } ;
struct st_h2o_http3_server_stream_t {scalar_t__ read_blocked; TYPE_1__ recvbuf; } ;
struct TYPE_5__ {struct st_h2o_http3_server_stream_t* data; } ;
typedef TYPE_2__ quicly_stream_t ;


 int h2o_http3_update_recvbuf (int *,size_t,void const*,size_t) ;
 int handle_buffered_input (struct st_h2o_http3_server_stream_t*,char const**) ;

__attribute__((used)) static int on_receive(quicly_stream_t *qs, size_t off, const void *input, size_t len)
{
    struct st_h2o_http3_server_stream_t *stream = qs->data;
    int ret;
    const char *err_desc = ((void*)0);


    if ((ret = h2o_http3_update_recvbuf(&stream->recvbuf.buf, off, input, len)) != 0)
        return ret;

    if (stream->read_blocked)
        return 0;


    return handle_buffered_input(stream, &err_desc);
}
