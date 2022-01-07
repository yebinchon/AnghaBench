
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int wbuf_small ;
typedef int uint8_t ;
struct TYPE_22__ {int off; int base; } ;
typedef TYPE_5__ ptls_buffer_t ;
struct TYPE_18__ {int * write; } ;
struct TYPE_23__ {TYPE_4__* ssl; TYPE_1__ _cb; } ;
typedef TYPE_6__ h2o_socket_t ;
struct TYPE_19__ {scalar_t__ size; } ;
struct TYPE_20__ {TYPE_2__ bufs; } ;
struct TYPE_21__ {int * ossl; TYPE_3__ output; int * ptls; } ;


 int ERR_clear_error () ;
 int PTLS_ALERT_CLOSE_NOTIFY ;
 int PTLS_ALERT_LEVEL_WARNING ;
 scalar_t__ SSL_ERROR_WANT_READ ;
 scalar_t__ SSL_get_error (int *,int) ;
 int SSL_shutdown (int *) ;
 void dispose_socket (TYPE_6__*,char const*) ;
 int flush_pending_ssl (TYPE_6__*,void (*) (TYPE_6__*,char const*)) ;
 int h2o_socket_read_start (TYPE_6__*,void (*) (TYPE_6__*,char const*)) ;
 int h2o_socket_read_stop (TYPE_6__*) ;
 int ptls_buffer_dispose (TYPE_5__*) ;
 int ptls_buffer_init (TYPE_5__*,int *,int) ;
 int ptls_send_alert (int *,TYPE_5__*,int ,int ) ;
 int write_ssl_bytes (TYPE_6__*,int ,int ) ;

__attribute__((used)) static void shutdown_ssl(h2o_socket_t *sock, const char *err)
{
    int ret;

    if (err != ((void*)0))
        goto Close;

    if (sock->_cb.write != ((void*)0)) {


        sock->_cb.write = ((void*)0);
        goto Close;
    }

    if (sock->ssl->ptls != ((void*)0)) {
        ptls_buffer_t wbuf;
        uint8_t wbuf_small[32];
        ptls_buffer_init(&wbuf, wbuf_small, sizeof(wbuf_small));
        if ((ret = ptls_send_alert(sock->ssl->ptls, &wbuf, PTLS_ALERT_LEVEL_WARNING, PTLS_ALERT_CLOSE_NOTIFY)) != 0)
            goto Close;
        write_ssl_bytes(sock, wbuf.base, wbuf.off);
        ptls_buffer_dispose(&wbuf);
        ret = 1;
    } else if (sock->ssl->ossl != ((void*)0)) {
        ERR_clear_error();
        if ((ret = SSL_shutdown(sock->ssl->ossl)) == -1)
            goto Close;
    } else {
        goto Close;
    }

    if (sock->ssl->output.bufs.size != 0) {
        h2o_socket_read_stop(sock);
        flush_pending_ssl(sock, ret == 1 ? dispose_socket : shutdown_ssl);
    } else if (ret == 2 && SSL_get_error(sock->ssl->ossl, ret) == SSL_ERROR_WANT_READ) {
        h2o_socket_read_start(sock, shutdown_ssl);
    } else {
        goto Close;
    }

    return;
Close:
    dispose_socket(sock, err);
}
