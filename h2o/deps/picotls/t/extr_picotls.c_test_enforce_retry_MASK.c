#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ptls_t ;
struct TYPE_17__ {char* key; int /*<<< orphan*/  additional_data; } ;
struct TYPE_18__ {int enforce_retry; int retry_uses_cookie; TYPE_4__ cookie; } ;
struct TYPE_16__ {int /*<<< orphan*/ * member_0; } ;
struct TYPE_15__ {TYPE_3__ member_0; } ;
struct TYPE_14__ {TYPE_2__ member_0; } ;
struct TYPE_19__ {TYPE_5__ server; TYPE_1__ member_0; } ;
typedef  TYPE_6__ ptls_handshake_properties_t ;
struct TYPE_20__ {size_t off; int /*<<< orphan*/ * base; } ;
typedef  TYPE_7__ ptls_buffer_t ;

/* Variables and functions */
 int PTLS_ERROR_IN_PROGRESS ; 
 int PTLS_ERROR_STATELESS_RETRY ; 
 int /*<<< orphan*/  ctx ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ *,size_t*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_7__*,char*,int) ; 

__attribute__((used)) static void FUNC10(int use_cookie)
{
    ptls_t *client, *server;
    ptls_handshake_properties_t server_hs_prop = {{{{NULL}}}};
    ptls_buffer_t cbuf, sbuf, decbuf;
    size_t consumed;
    int ret;

    server_hs_prop.server.cookie.key = "0123456789abcdef0123456789abcdef0123456789abcdef";
    server_hs_prop.server.cookie.additional_data = FUNC6("1.2.3.4:1234", 12);
    server_hs_prop.server.enforce_retry = 1;
    server_hs_prop.server.retry_uses_cookie = use_cookie;

    FUNC3(&cbuf, "", 0);
    FUNC3(&sbuf, "", 0);
    FUNC3(&decbuf, "", 0);

    client = FUNC7(ctx, 0);

    ret = FUNC5(client, &cbuf, NULL, NULL, NULL);
    FUNC1(ret == PTLS_ERROR_IN_PROGRESS);
    FUNC1(cbuf.off != 0);

    server = FUNC7(ctx, 1);

    consumed = cbuf.off;
    ret = FUNC5(server, &sbuf, cbuf.base, &consumed, &server_hs_prop);
    cbuf.off = 0;

    if (use_cookie) {
        FUNC1(ret == PTLS_ERROR_STATELESS_RETRY);
        FUNC4(server);
        server = FUNC7(ctx, 1);
    } else {
        FUNC1(ret == PTLS_ERROR_IN_PROGRESS);
    }

    consumed = sbuf.off;
    ret = FUNC5(client, &cbuf, sbuf.base, &consumed, NULL);
    FUNC1(ret == PTLS_ERROR_IN_PROGRESS);
    FUNC1(sbuf.off == consumed);
    sbuf.off = 0;

    consumed = cbuf.off;
    ret = FUNC5(server, &sbuf, cbuf.base, &consumed, &server_hs_prop);
    FUNC1(ret == 0);
    FUNC1(cbuf.off == consumed);
    cbuf.off = 0;

    consumed = sbuf.off;
    ret = FUNC5(client, &cbuf, sbuf.base, &consumed, NULL);
    FUNC1(ret == 0);
    FUNC1(sbuf.off == consumed);
    sbuf.off = 0;

    ret = FUNC9(client, &cbuf, "hello world", 11);
    FUNC1(ret == 0);

    consumed = cbuf.off;
    ret = FUNC8(server, &decbuf, cbuf.base, &consumed);
    FUNC1(ret == 0);
    FUNC1(cbuf.off == consumed);
    cbuf.off = 0;

    FUNC1(decbuf.off == 11);
    FUNC1(FUNC0(decbuf.base, "hello world", 11) == 0);
    decbuf.off = 0;

    FUNC4(client);
    FUNC4(server);

    FUNC2(&cbuf);
    FUNC2(&sbuf);
    FUNC2(&decbuf);
}