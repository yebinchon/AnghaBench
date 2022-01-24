#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wbuf_small ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_22__ {int /*<<< orphan*/  off; int /*<<< orphan*/  base; } ;
typedef  TYPE_5__ ptls_buffer_t ;
struct TYPE_18__ {int /*<<< orphan*/ * write; } ;
struct TYPE_23__ {TYPE_4__* ssl; TYPE_1__ _cb; } ;
typedef  TYPE_6__ h2o_socket_t ;
struct TYPE_19__ {scalar_t__ size; } ;
struct TYPE_20__ {TYPE_2__ bufs; } ;
struct TYPE_21__ {int /*<<< orphan*/ * ossl; TYPE_3__ output; int /*<<< orphan*/ * ptls; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  PTLS_ALERT_CLOSE_NOTIFY ; 
 int /*<<< orphan*/  PTLS_ALERT_LEVEL_WARNING ; 
 scalar_t__ SSL_ERROR_WANT_READ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 void FUNC3 (TYPE_6__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,void (*) (TYPE_6__*,char const*)) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,void (*) (TYPE_6__*,char const*)) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(h2o_socket_t *sock, const char *err)
{
    int ret;

    if (err != NULL)
        goto Close;

    if (sock->_cb.write != NULL) {
        /* note: libuv calls the write callback after the socket is closed by uv_close (with status set to 0 if the write succeeded)
         */
        sock->_cb.write = NULL;
        goto Close;
    }

    if (sock->ssl->ptls != NULL) {
        ptls_buffer_t wbuf;
        uint8_t wbuf_small[32];
        FUNC8(&wbuf, wbuf_small, sizeof(wbuf_small));
        if ((ret = FUNC9(sock->ssl->ptls, &wbuf, PTLS_ALERT_LEVEL_WARNING, PTLS_ALERT_CLOSE_NOTIFY)) != 0)
            goto Close;
        FUNC10(sock, wbuf.base, wbuf.off);
        FUNC7(&wbuf);
        ret = 1; /* close the socket after sending close_notify */
    } else if (sock->ssl->ossl != NULL) {
        FUNC0();
        if ((ret = FUNC2(sock->ssl->ossl)) == -1)
            goto Close;
    } else {
        goto Close;
    }

    if (sock->ssl->output.bufs.size != 0) {
        FUNC6(sock);
        FUNC4(sock, ret == 1 ? dispose_socket : shutdown_ssl);
    } else if (ret == 2 && FUNC1(sock->ssl->ossl, ret) == SSL_ERROR_WANT_READ) {
        FUNC5(sock, shutdown_ssl);
    } else {
        goto Close;
    }

    return;
Close:
    FUNC3(sock, err);
}