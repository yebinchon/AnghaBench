
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* ssl; } ;
typedef TYPE_4__ h2o_socket_t ;
struct TYPE_6__ {int session_cache_key_hash; int session_cache_key; int * session_cache; } ;
struct TYPE_7__ {TYPE_1__ client; } ;
struct TYPE_8__ {TYPE_2__ handshake; } ;
typedef int SSL_SESSION ;
typedef int SSL ;


 scalar_t__ SSL_SESSION_is_resumable (int *) ;
 scalar_t__ SSL_get_app_data (int *) ;
 int SSL_is_server (int *) ;
 int assert (int ) ;
 int h2o_cache_set (int *,int ,int ,int ,int ) ;
 int h2o_iovec_init (int *,int) ;
 int h2o_now (int ) ;
 int h2o_socket_get_loop (TYPE_4__*) ;

int h2o_socket_ssl_new_session_cb(SSL *s, SSL_SESSION *sess)
{
    h2o_socket_t *sock = (h2o_socket_t *)SSL_get_app_data(s);
    assert(sock != ((void*)0));
    assert(sock->ssl != ((void*)0));

    if (!SSL_is_server(s) && sock->ssl->handshake.client.session_cache != ((void*)0)



    ) {
        h2o_cache_set(sock->ssl->handshake.client.session_cache, h2o_now(h2o_socket_get_loop(sock)),
                      sock->ssl->handshake.client.session_cache_key, sock->ssl->handshake.client.session_cache_key_hash,
                      h2o_iovec_init(sess, 1));
        return 1;
    }

    return 0;
}
