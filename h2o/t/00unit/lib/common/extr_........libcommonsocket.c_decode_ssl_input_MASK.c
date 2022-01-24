#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
struct TYPE_19__ {int off; int /*<<< orphan*/  base; scalar_t__ is_allocated; } ;
typedef  TYPE_4__ ptls_buffer_t ;
struct TYPE_20__ {TYPE_11__* input; TYPE_3__* ssl; } ;
typedef  TYPE_5__ h2o_socket_t ;
struct TYPE_21__ {scalar_t__ len; int /*<<< orphan*/ * base; } ;
typedef  TYPE_6__ h2o_iovec_t ;
struct TYPE_17__ {TYPE_12__* encrypted; } ;
struct TYPE_16__ {int /*<<< orphan*/ * cb; } ;
struct TYPE_18__ {int* did_write_in_read; int /*<<< orphan*/  ossl; TYPE_2__ input; int /*<<< orphan*/ * ptls; TYPE_1__ handshake; } ;
struct TYPE_15__ {scalar_t__ size; char* bytes; } ;
struct TYPE_14__ {int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int PTLS_ERROR_IN_PROGRESS ; 
 scalar_t__ SSL_ERROR_WANT_READ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_12__**,int) ; 
 TYPE_6__ FUNC6 (TYPE_11__**,int) ; 
 char const* h2o_socket_error_out_of_memory ; 
 char const* h2o_socket_error_ssl_decode ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/ *,TYPE_4__*,char const*,size_t*) ; 

const char *FUNC11(h2o_socket_t *sock)
{
    FUNC4(sock->ssl != NULL);
    FUNC4(sock->ssl->handshake.cb == NULL);

    if (sock->ssl->ptls != NULL) {
        if (sock->ssl->input.encrypted->size != 0) {
            const char *src = sock->ssl->input.encrypted->bytes, *src_end = src + sock->ssl->input.encrypted->size;
            h2o_iovec_t reserved;
            ptls_buffer_t rbuf;
            int ret;
            if ((reserved = FUNC6(&sock->input, sock->ssl->input.encrypted->size)).base == NULL)
                return h2o_socket_error_out_of_memory;
            FUNC9(&rbuf, reserved.base, reserved.len);
            do {
                size_t consumed = src_end - src;
                if ((ret = FUNC10(sock->ssl->ptls, &rbuf, src, &consumed)) != 0)
                    break;
                src += consumed;
            } while (src != src_end);
            FUNC5(&sock->ssl->input.encrypted, sock->ssl->input.encrypted->size - (src_end - src));
            if (rbuf.is_allocated) {
                if ((reserved = FUNC6(&sock->input, rbuf.off)).base == NULL)
                    return h2o_socket_error_out_of_memory;
                FUNC7(reserved.base, rbuf.base, rbuf.off);
                sock->input->size += rbuf.off;
                FUNC8(&rbuf);
            } else {
                sock->input->size += rbuf.off;
            }
            if (!(ret == 0 || ret == PTLS_ERROR_IN_PROGRESS))
                return h2o_socket_error_ssl_decode;
        }
        return NULL;
    }

    while (sock->ssl->input.encrypted->size != 0 || FUNC2(sock->ssl->ossl)) {
        int rlen;
        h2o_iovec_t buf = FUNC6(&sock->input, 4096);
        if (buf.base == NULL)
            return h2o_socket_error_out_of_memory;
        { /* call SSL_read (while detecting SSL renegotiation and reporting it as error) */
            int did_write_in_read = 0;
            sock->ssl->did_write_in_read = &did_write_in_read;
            FUNC0();
            rlen = FUNC3(sock->ssl->ossl, buf.base, (int)buf.len);
            sock->ssl->did_write_in_read = NULL;
            if (did_write_in_read)
                return "ssl renegotiation not supported";
        }
        if (rlen == -1) {
            if (FUNC1(sock->ssl->ossl, rlen) != SSL_ERROR_WANT_READ) {
                return h2o_socket_error_ssl_decode;
            }
            break;
        } else if (rlen == 0) {
            break;
        } else {
            sock->input->size += rlen;
        }
    }

    return 0;
}