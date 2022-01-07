
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int ptls_t ;
typedef int ptls_handshake_properties_t ;
struct TYPE_7__ {size_t off; scalar_t__ base; } ;
typedef TYPE_1__ ptls_buffer_t ;


 int PTLS_ERROR_IN_PROGRESS ;
 int fprintf (int ,char*,int,int) ;
 int ptls_buffer_dispose (TYPE_1__*) ;
 int ptls_buffer_init (TYPE_1__*,char*,int ) ;
 int ptls_handshake (int *,TYPE_1__*,scalar_t__,size_t*,int *) ;
 int stderr ;

int handshake_progress(ptls_t * tls, ptls_buffer_t * sendbuf, ptls_buffer_t * recvbuf, ptls_handshake_properties_t * ph_prop)
{
    size_t inlen = 0, roff = 0;
    int ret = 0;

    ptls_buffer_init(sendbuf, "", 0);


    while (roff < recvbuf->off && (ret == 0 || ret == PTLS_ERROR_IN_PROGRESS))
    {
        inlen = recvbuf->off - roff;
        ret = ptls_handshake(tls, sendbuf, recvbuf->base + roff, &inlen, ph_prop);
        roff += inlen;
    }

    if (roff < recvbuf->off)
    {

        fprintf(stderr, "Could only process %d bytes out of %d\n", (int) roff, (int) recvbuf->off);
    }
    ptls_buffer_dispose(recvbuf);

    return ret;
}
