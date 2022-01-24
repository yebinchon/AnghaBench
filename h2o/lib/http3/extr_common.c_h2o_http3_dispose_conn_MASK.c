#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  khiter_t ;
struct TYPE_7__ {int /*<<< orphan*/ * enc; int /*<<< orphan*/ * dec; } ;
struct TYPE_8__ {int /*<<< orphan*/  _timeout; int /*<<< orphan*/ * quic; TYPE_5__* ctx; TYPE_1__ qpack; } ;
typedef  TYPE_2__ h2o_http3_conn_t ;
struct TYPE_10__ {int /*<<< orphan*/  conns_by_id; } ;
struct TYPE_9__ {int /*<<< orphan*/  master_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(h2o_http3_conn_t *conn)
{
    if (conn->qpack.dec != NULL)
        FUNC1(conn->qpack.dec);
    if (conn->qpack.enc != NULL)
        FUNC2(conn->qpack.enc);
    if (conn->quic != NULL) {
        khiter_t iter;
        /* unregister from maps */
        if ((iter = FUNC6(conn->ctx->conns_by_id, FUNC8(conn->quic)->master_id)) !=
            FUNC5(conn->ctx->conns_by_id))
            FUNC4(conn->ctx->conns_by_id, iter);
        FUNC0(conn->ctx, conn);
        FUNC7(conn->quic);
    }
    FUNC3(&conn->_timeout);
}