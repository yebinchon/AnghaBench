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
struct TYPE_17__ {char* key; void* additional_data; } ;
struct TYPE_18__ {int enforce_retry; int retry_uses_cookie; TYPE_4__ cookie; } ;
struct TYPE_16__ {int /*<<< orphan*/ * member_0; } ;
struct TYPE_15__ {TYPE_3__ member_0; } ;
struct TYPE_14__ {TYPE_2__ member_0; } ;
struct TYPE_19__ {TYPE_5__ server; TYPE_1__ member_0; } ;
typedef  TYPE_6__ ptls_handshake_properties_t ;
struct TYPE_20__ {size_t off; int /*<<< orphan*/  base; } ;
typedef  TYPE_7__ ptls_buffer_t ;

/* Variables and functions */
 int PTLS_ALERT_HANDSHAKE_FAILURE ; 
 int PTLS_ERROR_IN_PROGRESS ; 
 int /*<<< orphan*/  ctx_peer ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ ,size_t*,TYPE_6__*) ; 
 void* FUNC5 (char*,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_7__*,TYPE_6__*) ; 

__attribute__((used)) static void FUNC8(void)
{
    ptls_t *client, *server;
    ptls_handshake_properties_t server_hs_prop = {{{{NULL}}}};
    ptls_buffer_t cbuf, sbuf;
    size_t consumed;
    int ret;

    server_hs_prop.server.cookie.key = "0123456789abcdef0123456789abcdef0123456789abcdef";
    server_hs_prop.server.cookie.additional_data = FUNC5("1.2.3.4:1234", 12);
    server_hs_prop.server.enforce_retry = 1;
    server_hs_prop.server.retry_uses_cookie = 1;

    client = FUNC7(&sbuf, &server_hs_prop);
    FUNC2(&cbuf, "", 0);

    consumed = sbuf.off;
    ret = FUNC4(client, &cbuf, sbuf.base, &consumed, NULL);
    FUNC0(ret == PTLS_ERROR_IN_PROGRESS);
    FUNC0(sbuf.off == consumed);
    sbuf.off = 0;

    server = FUNC6(ctx_peer, 1);
    server_hs_prop.server.cookie.additional_data = FUNC5("1.2.3.4:4321", 12);

    consumed = cbuf.off;
    ret = FUNC4(server, &sbuf, cbuf.base, &consumed, &server_hs_prop);
    FUNC0(ret == PTLS_ALERT_HANDSHAKE_FAILURE);

    FUNC3(client);
    FUNC3(server);

    FUNC1(&cbuf);
    FUNC1(&sbuf);
}