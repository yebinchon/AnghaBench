
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* ssl; } ;
typedef TYPE_5__ h2o_socket_t ;
struct TYPE_10__ {int state; int * session_data; } ;
struct TYPE_9__ {TYPE_3__ async_resumption; } ;
struct TYPE_11__ {TYPE_2__ server; } ;
struct TYPE_8__ {TYPE_4__ handshake; } ;
typedef int SSL_SESSION ;
typedef int SSL ;




 int ASYNC_RESUMPTION_STATE_REQUEST_SENT ;
 TYPE_5__* BIO_get_data (int ) ;
 int SSL_get_rbio (int *) ;
 int assert (int) ;
 int h2o_iovec_init (unsigned char const*,int) ;
 int resumption_get_async (TYPE_5__*,int ) ;

__attribute__((used)) static SSL_SESSION *on_async_resumption_get(SSL *ssl,



                                            unsigned char *data,
                                            int len, int *copy)
{
    h2o_socket_t *sock = BIO_get_data(SSL_get_rbio(ssl));

    switch (sock->ssl->handshake.server.async_resumption.state) {
    case 128:
        sock->ssl->handshake.server.async_resumption.state = ASYNC_RESUMPTION_STATE_REQUEST_SENT;
        resumption_get_async(sock, h2o_iovec_init(data, len));
        return ((void*)0);
    case 129:
        *copy = 1;
        return sock->ssl->handshake.server.async_resumption.session_data;
    default:
        assert(!"FIXME");
        return ((void*)0);
    }
}
