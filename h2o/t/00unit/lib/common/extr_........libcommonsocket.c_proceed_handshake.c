
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_42__ TYPE_9__ ;
typedef struct TYPE_41__ TYPE_8__ ;
typedef struct TYPE_40__ TYPE_7__ ;
typedef struct TYPE_39__ TYPE_6__ ;
typedef struct TYPE_38__ TYPE_5__ ;
typedef struct TYPE_37__ TYPE_4__ ;
typedef struct TYPE_36__ TYPE_3__ ;
typedef struct TYPE_35__ TYPE_2__ ;
typedef struct TYPE_34__ TYPE_29__ ;
typedef struct TYPE_33__ TYPE_24__ ;
typedef struct TYPE_32__ TYPE_1__ ;
typedef struct TYPE_31__ TYPE_11__ ;
typedef struct TYPE_30__ TYPE_10__ ;


typedef int ptls_t ;
typedef int ptls_context_t ;
struct TYPE_42__ {scalar_t__ off; int base; } ;
typedef TYPE_9__ ptls_buffer_t ;
struct TYPE_37__ {int * write; } ;
struct TYPE_30__ {unsigned int _skip_tracing; TYPE_29__* ssl; TYPE_4__ _cb; } ;
typedef TYPE_10__ h2o_socket_t ;
struct TYPE_31__ {size_t len; int base; int * member_0; } ;
typedef TYPE_11__ h2o_iovec_t ;
typedef int X509 ;
struct TYPE_41__ {TYPE_24__* encrypted; } ;
struct TYPE_36__ {int server_name; } ;
struct TYPE_38__ {int state; } ;
struct TYPE_39__ {TYPE_5__ async_resumption; } ;
struct TYPE_40__ {TYPE_3__ client; TYPE_6__ server; } ;
struct TYPE_32__ {scalar_t__ size; } ;
struct TYPE_35__ {TYPE_1__ bufs; } ;
struct TYPE_34__ {TYPE_8__ input; TYPE_7__ handshake; int * ossl; TYPE_2__ output; int * ptls; int ssl_ctx; } ;
struct TYPE_33__ {size_t size; int bytes; } ;





 int ERR_clear_error () ;



 scalar_t__ SSL_ERROR_WANT_READ ;
 int SSL_accept (int *) ;
 int SSL_connect (int *) ;
 int SSL_free (int *) ;
 scalar_t__ SSL_get_error (int *,int) ;
 int * SSL_get_peer_certificate (int *) ;
 long SSL_get_verify_result (int *) ;
 scalar_t__ SSL_is_server (int *) ;
 long X509_V_OK ;
 int X509_free (int *) ;
 char* X509_verify_cert_error_string (long) ;
 int alloca (int) ;
 int assert (int) ;
 int clear_output_buffer (TYPE_29__*) ;
 int create_ossl (TYPE_10__*) ;
 int flush_pending_ssl (TYPE_10__*,void (*) (TYPE_10__*,char const*)) ;
 int h2o_buffer_consume (TYPE_24__**,size_t) ;
 int h2o_buffer_reserve (TYPE_24__**,size_t) ;
 int h2o_fatal (char*) ;
 TYPE_11__ h2o_iovec_init (int ,int) ;
 char* h2o_socket_error_ssl_cert_invalid ;
 char* h2o_socket_error_ssl_cert_name_mismatch ;
 char* h2o_socket_error_ssl_handshake ;
 char* h2o_socket_error_ssl_no_cert ;
 int h2o_socket_read_start (TYPE_10__*,void (*) (TYPE_10__*,char const*)) ;
 int h2o_socket_read_stop (TYPE_10__*) ;
 int * h2o_socket_ssl_get_picotls_context (int ) ;
 int memcpy (int ,int ,size_t) ;
 void on_handshake_complete (TYPE_10__*,char const*) ;
 void on_handshake_failure_ossl111 (TYPE_10__*,char const*) ;
 int ptls_buffer_dispose (TYPE_9__*) ;
 int ptls_buffer_init (TYPE_9__*,char*,int ) ;
 unsigned int ptls_default_skip_tracing ;
 int ptls_free (int *) ;
 TYPE_10__** ptls_get_data_ptr (int *) ;
 int ptls_handshake (int *,TYPE_9__*,int ,size_t*,int *) ;
 int * ptls_new (int *,int) ;
 int validate_hostname (int ,int *) ;
 int write_ssl_bytes (TYPE_10__*,int ,scalar_t__) ;

__attribute__((used)) static void proceed_handshake(h2o_socket_t *sock, const char *err)
{
    h2o_iovec_t first_input = {((void*)0)};
    int ret = 0;

    sock->_cb.write = ((void*)0);

    if (err != ((void*)0)) {
        goto Complete;
    }

    if (sock->ssl->ossl == ((void*)0)) {

        size_t consumed = sock->ssl->input.encrypted->size;
        ptls_buffer_t wbuf;
        ptls_buffer_init(&wbuf, "", 0);

        if (sock->ssl->ptls != ((void*)0)) {

            ret = ptls_handshake(sock->ssl->ptls, &wbuf, sock->ssl->input.encrypted->bytes, &consumed, ((void*)0));
        } else {

            ptls_context_t *ptls_ctx = h2o_socket_ssl_get_picotls_context(sock->ssl->ssl_ctx);
            if (ptls_ctx != ((void*)0)) {




                ptls_t *ptls = ptls_new(ptls_ctx, 1);



                if (ptls == ((void*)0))
                    h2o_fatal("no memory");
                *ptls_get_data_ptr(ptls) = sock;
                ret = ptls_handshake(ptls, &wbuf, sock->ssl->input.encrypted->bytes, &consumed, ((void*)0));
                if ((ret == 0 || ret == 128) && wbuf.off != 0) {
                    sock->ssl->ptls = ptls;
                    sock->ssl->handshake.server.async_resumption.state = 133;
                } else {
                    ptls_free(ptls);
                }
            }
        }

        if (sock->ssl->ptls != ((void*)0)) {

            h2o_buffer_consume(&sock->ssl->input.encrypted, consumed);
            switch (ret) {
            case 0:
            case 128:
                if (wbuf.off != 0) {
                    h2o_socket_read_stop(sock);
                    write_ssl_bytes(sock, wbuf.base, wbuf.off);
                    flush_pending_ssl(sock, ret == 0 ? on_handshake_complete : proceed_handshake);
                } else {
                    h2o_socket_read_start(sock, proceed_handshake);
                }
                break;
            default:

                on_handshake_complete(sock, "picotls handshake error");
                break;
            }
            ptls_buffer_dispose(&wbuf);
            return;
        }
        ptls_buffer_dispose(&wbuf);


        create_ossl(sock);
    }

    if (sock->ssl->ossl != ((void*)0) && SSL_is_server(sock->ssl->ossl) &&
        sock->ssl->handshake.server.async_resumption.state == 132) {
        if (sock->ssl->input.encrypted->size <= 1024) {

            first_input = h2o_iovec_init(alloca(sock->ssl->input.encrypted->size), sock->ssl->input.encrypted->size);
            memcpy(first_input.base, sock->ssl->input.encrypted->bytes, first_input.len);
        } else {
            sock->ssl->handshake.server.async_resumption.state = 133;
        }
    }

Redo:
    ERR_clear_error();
    if (SSL_is_server(sock->ssl->ossl)) {
        ret = SSL_accept(sock->ssl->ossl);
        switch (sock->ssl->handshake.server.async_resumption.state) {
        case 133:
            break;
        case 132:

            sock->ssl->handshake.server.async_resumption.state = 133;
            break;
        case 131: {

            assert(ret < 0);
            SSL_free(sock->ssl->ossl);
            create_ossl(sock);
            clear_output_buffer(sock->ssl);
            h2o_buffer_consume(&sock->ssl->input.encrypted, sock->ssl->input.encrypted->size);
            h2o_buffer_reserve(&sock->ssl->input.encrypted, first_input.len);
            memcpy(sock->ssl->input.encrypted->bytes, first_input.base, first_input.len);
            sock->ssl->input.encrypted->size = first_input.len;
            h2o_socket_read_stop(sock);
            return;
        }
        default:
            h2o_fatal("unexpected async resumption state");
            break;
        }
    } else {
        ret = SSL_connect(sock->ssl->ossl);
    }

    if (ret == 0 || (ret < 0 && SSL_get_error(sock->ssl->ossl, ret) != SSL_ERROR_WANT_READ)) {

        long verify_result = SSL_get_verify_result(sock->ssl->ossl);
        if (verify_result != X509_V_OK) {
            err = X509_verify_cert_error_string(verify_result);
        } else {
            err = h2o_socket_error_ssl_handshake;


            if (sock->ssl->output.bufs.size != 0) {
                h2o_socket_read_stop(sock);
                flush_pending_ssl(sock, on_handshake_failure_ossl111);
                return;
            }
        }
        goto Complete;
    }

    if (sock->ssl->output.bufs.size != 0) {
        h2o_socket_read_stop(sock);
        flush_pending_ssl(sock, ret == 1 ? on_handshake_complete : proceed_handshake);
    } else {
        if (ret == 1) {
            if (!SSL_is_server(sock->ssl->ossl)) {
                X509 *cert = SSL_get_peer_certificate(sock->ssl->ossl);
                if (cert != ((void*)0)) {
                    switch (validate_hostname(sock->ssl->handshake.client.server_name, cert)) {
                    case 130:

                        break;
                    case 129:
                        err = h2o_socket_error_ssl_cert_name_mismatch;
                        break;
                    default:
                        err = h2o_socket_error_ssl_cert_invalid;
                        break;
                    }
                    X509_free(cert);
                } else {
                    err = h2o_socket_error_ssl_no_cert;
                }
            }
            goto Complete;
        }
        if (sock->ssl->input.encrypted->size != 0)
            goto Redo;
        h2o_socket_read_start(sock, proceed_handshake);
    }
    return;

Complete:
    h2o_socket_read_stop(sock);
    on_handshake_complete(sock, err);
}
