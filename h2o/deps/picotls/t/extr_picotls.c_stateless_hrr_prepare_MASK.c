#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ptls_t ;
typedef  int /*<<< orphan*/  ptls_handshake_properties_t ;
struct TYPE_6__ {size_t off; int /*<<< orphan*/ * base; } ;
typedef  TYPE_1__ ptls_buffer_t ;

/* Variables and functions */
 int PTLS_ERROR_IN_PROGRESS ; 
 int PTLS_ERROR_STATELESS_RETRY ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  ctx_peer ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ptls_t *FUNC6(ptls_buffer_t *sbuf, ptls_handshake_properties_t *server_hs_prop)
{
    ptls_t *client = FUNC5(ctx, 0), *server = FUNC5(ctx_peer, 1);
    ptls_buffer_t cbuf;
    size_t consumed;
    int ret;

    FUNC2(&cbuf, "", 0);
    FUNC2(sbuf, "", 0);

    ret = FUNC4(client, &cbuf, NULL, NULL, NULL);
    FUNC0(ret == PTLS_ERROR_IN_PROGRESS);

    consumed = cbuf.off;
    ret = FUNC4(server, sbuf, cbuf.base, &consumed, server_hs_prop);
    FUNC0(ret == PTLS_ERROR_STATELESS_RETRY);

    FUNC1(&cbuf);
    FUNC3(server);

    return client;
}