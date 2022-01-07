
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* ssl; } ;
typedef TYPE_5__ h2o_socket_t ;
typedef int h2o_iovec_t ;
struct TYPE_10__ {scalar_t__ state; } ;
struct TYPE_9__ {TYPE_4__ async_resumption; } ;
struct TYPE_7__ {TYPE_3__ server; } ;
struct TYPE_8__ {int * ossl; TYPE_1__ handshake; int * ptls; } ;
typedef int SSL_SESSION ;


 scalar_t__ ASYNC_RESUMPTION_STATE_COMPLETE ;
 unsigned char* SSL_SESSION_get_id (int *,unsigned int*) ;
 int * SSL_get_session (int *) ;
 int h2o_iovec_init (unsigned char const*,unsigned int) ;

h2o_iovec_t h2o_socket_get_ssl_session_id(h2o_socket_t *sock)
{
    if (sock->ssl != ((void*)0)) {
        if (sock->ssl->ptls != ((void*)0)) {

        } else if (sock->ssl->ossl != ((void*)0)) {
            SSL_SESSION *session;
            if (sock->ssl->handshake.server.async_resumption.state == ASYNC_RESUMPTION_STATE_COMPLETE &&
                (session = SSL_get_session(sock->ssl->ossl)) != ((void*)0)) {
                unsigned id_len;
                const unsigned char *id = SSL_SESSION_get_id(session, &id_len);
                return h2o_iovec_init(id, id_len);
            }
        }
    }

    return h2o_iovec_init(((void*)0), 0);
}
