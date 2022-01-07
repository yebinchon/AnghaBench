
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ingress; int egress; } ;
typedef TYPE_1__ quicly_streambuf_t ;
struct TYPE_6__ {TYPE_1__* data; } ;
typedef TYPE_2__ quicly_stream_t ;


 int PTLS_ERROR_NO_MEMORY ;
 int assert (int) ;
 TYPE_1__* malloc (size_t) ;
 int memset (char*,int ,size_t) ;
 int ptls_buffer_init (int *,char*,int ) ;
 int quicly_sendbuf_init (int *) ;

int quicly_streambuf_create(quicly_stream_t *stream, size_t sz)
{
    quicly_streambuf_t *sbuf;

    assert(sz >= sizeof(*sbuf));
    assert(stream->data == ((void*)0));

    if ((sbuf = malloc(sz)) == ((void*)0))
        return PTLS_ERROR_NO_MEMORY;
    quicly_sendbuf_init(&sbuf->egress);
    ptls_buffer_init(&sbuf->ingress, "", 0);
    if (sz != sizeof(*sbuf))
        memset((char *)sbuf + sizeof(*sbuf), 0, sz - sizeof(*sbuf));

    stream->data = sbuf;
    return 0;
}
