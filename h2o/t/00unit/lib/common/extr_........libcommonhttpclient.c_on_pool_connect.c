
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int h2o_url_t ;
struct TYPE_15__ {int * ssl; } ;
typedef TYPE_2__ h2o_socket_t ;
struct TYPE_16__ {scalar_t__ len; int base; } ;
typedef TYPE_3__ h2o_iovec_t ;
struct TYPE_17__ {TYPE_1__* connpool; int * _connect_req; int _timeout; } ;
typedef TYPE_4__ h2o_httpclient_t ;
struct TYPE_14__ {int socketpool; } ;


 int H2O_STRLIT (char*) ;
 int assert (int ) ;
 int h2o_httpclient__h1_on_connect (TYPE_4__*,TYPE_2__*,int *) ;
 int h2o_httpclient__h2_on_connect (TYPE_4__*,TYPE_2__*,int *) ;
 char const* h2o_httpclient_error_unknown_alpn_protocol ;
 scalar_t__ h2o_memis (int ,scalar_t__,int ) ;
 TYPE_3__ h2o_socket_ssl_get_selected_protocol (TYPE_2__*) ;
 int h2o_socketpool_detach (int ,TYPE_2__*) ;
 int h2o_timer_unlink (int *) ;
 scalar_t__ memcmp (int ,char*,scalar_t__) ;
 int on_connect_error (TYPE_4__*,char const*) ;

__attribute__((used)) static void on_pool_connect(h2o_socket_t *sock, const char *errstr, void *data, h2o_url_t *origin)
{
    h2o_httpclient_t *client = data;

    h2o_timer_unlink(&client->_timeout);

    client->_connect_req = ((void*)0);

    if (sock == ((void*)0)) {
        assert(errstr != ((void*)0));
        on_connect_error(client, errstr);
        return;
    }

    h2o_iovec_t alpn_proto;
    if (sock->ssl == ((void*)0) || (alpn_proto = h2o_socket_ssl_get_selected_protocol(sock)).len == 0) {
        h2o_httpclient__h1_on_connect(client, sock, origin);
    } else {
        if (h2o_memis(alpn_proto.base, alpn_proto.len, H2O_STRLIT("h2"))) {

            h2o_socketpool_detach(client->connpool->socketpool, sock);
            h2o_httpclient__h2_on_connect(client, sock, origin);
        } else if (memcmp(alpn_proto.base, "http/1.1", alpn_proto.len) == 0) {
            h2o_httpclient__h1_on_connect(client, sock, origin);
        } else {
            on_connect_error(client, h2o_httpclient_error_unknown_alpn_protocol);
        }
    }
}
