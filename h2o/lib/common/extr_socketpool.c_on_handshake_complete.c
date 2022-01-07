
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* sock; TYPE_1__* pool; } ;
typedef TYPE_2__ h2o_socketpool_connect_request_t ;
struct TYPE_9__ {TYPE_2__* data; } ;
typedef TYPE_3__ h2o_socket_t ;
struct TYPE_7__ {int _ssl_ctx; } ;


 int SSL_CTX_get_verify_mode (int ) ;
 int SSL_VERIFY_PEER ;
 int assert (int) ;
 int call_connect_cb (TYPE_2__*,char const*) ;
 int h2o_socket_close (TYPE_3__*) ;
 char const* h2o_socket_error_ssl_cert_name_mismatch ;

__attribute__((used)) static void on_handshake_complete(h2o_socket_t *sock, const char *err)
{
    h2o_socketpool_connect_request_t *req = sock->data;

    assert(req->sock == sock);

    if (err == h2o_socket_error_ssl_cert_name_mismatch && (SSL_CTX_get_verify_mode(req->pool->_ssl_ctx) & SSL_VERIFY_PEER) == 0) {

    } else if (err != ((void*)0)) {
        h2o_socket_close(sock);
        req->sock = ((void*)0);
    }

    call_connect_cb(req, err);
}
