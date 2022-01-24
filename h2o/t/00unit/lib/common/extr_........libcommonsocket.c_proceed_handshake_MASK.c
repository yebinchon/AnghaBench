#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_42__   TYPE_9__ ;
typedef  struct TYPE_41__   TYPE_8__ ;
typedef  struct TYPE_40__   TYPE_7__ ;
typedef  struct TYPE_39__   TYPE_6__ ;
typedef  struct TYPE_38__   TYPE_5__ ;
typedef  struct TYPE_37__   TYPE_4__ ;
typedef  struct TYPE_36__   TYPE_3__ ;
typedef  struct TYPE_35__   TYPE_2__ ;
typedef  struct TYPE_34__   TYPE_29__ ;
typedef  struct TYPE_33__   TYPE_24__ ;
typedef  struct TYPE_32__   TYPE_1__ ;
typedef  struct TYPE_31__   TYPE_11__ ;
typedef  struct TYPE_30__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ptls_t ;
typedef  int /*<<< orphan*/  ptls_context_t ;
struct TYPE_42__ {scalar_t__ off; int /*<<< orphan*/  base; } ;
typedef  TYPE_9__ ptls_buffer_t ;
struct TYPE_37__ {int /*<<< orphan*/ * write; } ;
struct TYPE_30__ {unsigned int _skip_tracing; TYPE_29__* ssl; TYPE_4__ _cb; } ;
typedef  TYPE_10__ h2o_socket_t ;
struct TYPE_31__ {size_t len; int /*<<< orphan*/  base; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_11__ h2o_iovec_t ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_41__ {TYPE_24__* encrypted; } ;
struct TYPE_36__ {int /*<<< orphan*/  server_name; } ;
struct TYPE_38__ {int state; } ;
struct TYPE_39__ {TYPE_5__ async_resumption; } ;
struct TYPE_40__ {TYPE_3__ client; TYPE_6__ server; } ;
struct TYPE_32__ {scalar_t__ size; } ;
struct TYPE_35__ {TYPE_1__ bufs; } ;
struct TYPE_34__ {TYPE_8__ input; TYPE_7__ handshake; int /*<<< orphan*/ * ossl; TYPE_2__ output; int /*<<< orphan*/ * ptls; int /*<<< orphan*/  ssl_ctx; } ;
struct TYPE_33__ {size_t size; int /*<<< orphan*/  bytes; } ;

/* Variables and functions */
#define  ASYNC_RESUMPTION_STATE_COMPLETE 133 
#define  ASYNC_RESUMPTION_STATE_RECORD 132 
#define  ASYNC_RESUMPTION_STATE_REQUEST_SENT 131 
 int /*<<< orphan*/  FUNC0 () ; 
#define  MatchFound 130 
#define  MatchNotFound 129 
#define  PTLS_ERROR_IN_PROGRESS 128 
 scalar_t__ SSL_ERROR_WANT_READ ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 long FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 long X509_V_OK ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (long) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_29__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_10__*,void (*) (TYPE_10__*,char const*)) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_24__**,size_t) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_24__**,size_t) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 TYPE_11__ FUNC18 (int /*<<< orphan*/ ,int) ; 
 char* h2o_socket_error_ssl_cert_invalid ; 
 char* h2o_socket_error_ssl_cert_name_mismatch ; 
 char* h2o_socket_error_ssl_handshake ; 
 char* h2o_socket_error_ssl_no_cert ; 
 int /*<<< orphan*/  FUNC19 (TYPE_10__*,void (*) (TYPE_10__*,char const*)) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_10__*) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 void FUNC23 (TYPE_10__*,char const*) ; 
 void FUNC24 (TYPE_10__*,char const*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_9__*,char*,int /*<<< orphan*/ ) ; 
 unsigned int ptls_default_skip_tracing ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 TYPE_10__** FUNC28 (int /*<<< orphan*/ *) ; 
 int FUNC29 (int /*<<< orphan*/ *,TYPE_9__*,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC30 (int /*<<< orphan*/ *,int) ; 
 int FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_10__*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC33(h2o_socket_t *sock, const char *err)
{
    h2o_iovec_t first_input = {NULL};
    int ret = 0;

    sock->_cb.write = NULL;

    if (err != NULL) {
        goto Complete;
    }

    if (sock->ssl->ossl == NULL) {
        /* prepare I/O */
        size_t consumed = sock->ssl->input.encrypted->size;
        ptls_buffer_t wbuf;
        FUNC26(&wbuf, "", 0);

        if (sock->ssl->ptls != NULL) {
            /* picotls in action, proceed the handshake */
            ret = FUNC29(sock->ssl->ptls, &wbuf, sock->ssl->input.encrypted->bytes, &consumed, NULL);
        } else {
            /* start using picotls if the first packet contains TLS 1.3 CH */
            ptls_context_t *ptls_ctx = FUNC21(sock->ssl->ssl_ctx);
            if (ptls_ctx != NULL) {
#if PICOTLS_USE_DTRACE
                unsigned ptls_skip_tracing_backup = ptls_default_skip_tracing;
                ptls_default_skip_tracing = sock->_skip_tracing;
#endif
                ptls_t *ptls = FUNC30(ptls_ctx, 1);
#if PICOTLS_USE_DTRACE
                ptls_default_skip_tracing = ptls_skip_tracing_backup;
#endif
                if (ptls == NULL)
                    FUNC17("no memory");
                *FUNC28(ptls) = sock;
                ret = FUNC29(ptls, &wbuf, sock->ssl->input.encrypted->bytes, &consumed, NULL);
                if ((ret == 0 || ret == PTLS_ERROR_IN_PROGRESS) && wbuf.off != 0) {
                    sock->ssl->ptls = ptls;
                    sock->ssl->handshake.server.async_resumption.state = ASYNC_RESUMPTION_STATE_COMPLETE;
                } else {
                    FUNC27(ptls);
                }
            }
        }

        if (sock->ssl->ptls != NULL) {
            /* complete I/O done by picotls */
            FUNC15(&sock->ssl->input.encrypted, consumed);
            switch (ret) {
            case 0:
            case PTLS_ERROR_IN_PROGRESS:
                if (wbuf.off != 0) {
                    FUNC20(sock);
                    FUNC32(sock, wbuf.base, wbuf.off);
                    FUNC14(sock, ret == 0 ? on_handshake_complete : proceed_handshake);
                } else {
                    FUNC19(sock, proceed_handshake);
                }
                break;
            default:
                /* FIXME send alert in wbuf before calling the callback */
                FUNC23(sock, "picotls handshake error");
                break;
            }
            FUNC25(&wbuf);
            return;
        }
        FUNC25(&wbuf);

        /* fallback to openssl if the attempt failed */
        FUNC13(sock);
    }

    if (sock->ssl->ossl != NULL && FUNC7(sock->ssl->ossl) &&
        sock->ssl->handshake.server.async_resumption.state == ASYNC_RESUMPTION_STATE_RECORD) {
        if (sock->ssl->input.encrypted->size <= 1024) {
            /* retain a copy of input if performing async resumption */
            first_input = FUNC18(FUNC10(sock->ssl->input.encrypted->size), sock->ssl->input.encrypted->size);
            FUNC22(first_input.base, sock->ssl->input.encrypted->bytes, first_input.len);
        } else {
            sock->ssl->handshake.server.async_resumption.state = ASYNC_RESUMPTION_STATE_COMPLETE;
        }
    }

Redo:
    FUNC0();
    if (FUNC7(sock->ssl->ossl)) {
        ret = FUNC1(sock->ssl->ossl);
        switch (sock->ssl->handshake.server.async_resumption.state) {
        case ASYNC_RESUMPTION_STATE_COMPLETE:
            break;
        case ASYNC_RESUMPTION_STATE_RECORD:
            /* async resumption has not been triggered; proceed the state to complete */
            sock->ssl->handshake.server.async_resumption.state = ASYNC_RESUMPTION_STATE_COMPLETE;
            break;
        case ASYNC_RESUMPTION_STATE_REQUEST_SENT: {
            /* sent async request, reset the ssl state, and wait for async response */
            FUNC11(ret < 0);
            FUNC3(sock->ssl->ossl);
            FUNC13(sock);
            FUNC12(sock->ssl);
            FUNC15(&sock->ssl->input.encrypted, sock->ssl->input.encrypted->size);
            FUNC16(&sock->ssl->input.encrypted, first_input.len);
            FUNC22(sock->ssl->input.encrypted->bytes, first_input.base, first_input.len);
            sock->ssl->input.encrypted->size = first_input.len;
            FUNC20(sock);
            return;
        }
        default:
            FUNC17("unexpected async resumption state");
            break;
        }
    } else {
        ret = FUNC2(sock->ssl->ossl);
    }

    if (ret == 0 || (ret < 0 && FUNC4(sock->ssl->ossl, ret) != SSL_ERROR_WANT_READ)) {
        /* failed */
        long verify_result = FUNC6(sock->ssl->ossl);
        if (verify_result != X509_V_OK) {
            err = FUNC9(verify_result);
        } else {
            err = h2o_socket_error_ssl_handshake;
            /* OpenSSL 1.1.0 emits an alert immediately, we  send it now. 1.0.2 emits the error when SSL_shutdown is called in
             * shutdown_ssl. */
            if (sock->ssl->output.bufs.size != 0) {
                FUNC20(sock);
                FUNC14(sock, on_handshake_failure_ossl111);
                return;
            }
        }
        goto Complete;
    }

    if (sock->ssl->output.bufs.size != 0) {
        FUNC20(sock);
        FUNC14(sock, ret == 1 ? on_handshake_complete : proceed_handshake);
    } else {
        if (ret == 1) {
            if (!FUNC7(sock->ssl->ossl)) {
                X509 *cert = FUNC5(sock->ssl->ossl);
                if (cert != NULL) {
                    switch (FUNC31(sock->ssl->handshake.client.server_name, cert)) {
                    case MatchFound:
                        /* ok */
                        break;
                    case MatchNotFound:
                        err = h2o_socket_error_ssl_cert_name_mismatch;
                        break;
                    default:
                        err = h2o_socket_error_ssl_cert_invalid;
                        break;
                    }
                    FUNC8(cert);
                } else {
                    err = h2o_socket_error_ssl_no_cert;
                }
            }
            goto Complete;
        }
        if (sock->ssl->input.encrypted->size != 0)
            goto Redo;
        FUNC19(sock, proceed_handshake);
    }
    return;

Complete:
    FUNC20(sock);
    FUNC23(sock, err);
}