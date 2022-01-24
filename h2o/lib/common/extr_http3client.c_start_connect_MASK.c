#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/ * quic; } ;
struct TYPE_10__ {int /*<<< orphan*/  base; } ;
struct TYPE_11__ {TYPE_1__ host; } ;
struct TYPE_12__ {TYPE_2__ origin_url; } ;
struct TYPE_16__ {scalar_t__ cb; } ;
struct st_h2o_http3client_conn_t {TYPE_8__ super; TYPE_5__* ctx; int /*<<< orphan*/  handshake_properties; TYPE_3__ server; TYPE_7__ timeout; int /*<<< orphan*/ * getaddr_req; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  quicly_conn_t ;
struct TYPE_15__ {int /*<<< orphan*/  master_id; } ;
struct TYPE_14__ {TYPE_4__* http3; } ;
struct TYPE_13__ {TYPE_6__ next_cid; int /*<<< orphan*/  quic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct st_h2o_http3client_conn_t*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*) ; 
 int FUNC3 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_7__*) ; 
 scalar_t__ on_connect_timeout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct st_h2o_http3client_conn_t *conn, struct sockaddr *sa, socklen_t salen)
{
    quicly_conn_t *qconn;
    int ret;

    FUNC0(conn->super.quic == NULL);
    FUNC0(conn->getaddr_req == NULL);
    FUNC0(FUNC4(&conn->timeout));
    FUNC0(conn->timeout.cb == on_connect_timeout);

    /* create QUIC connection context and attach (TODO pass address token, transport params) */
    if ((ret = FUNC6(&qconn, conn->ctx->http3->quic, conn->server.origin_url.host.base, sa, NULL,
                              &conn->ctx->http3->next_cid, FUNC5(NULL, 0), &conn->handshake_properties, NULL)) != 0) {
        conn->super.quic = NULL; /* just in case */
        goto Fail;
    }
    ++conn->ctx->http3->next_cid.master_id; /* FIXME check overlap */
    if ((ret = FUNC3(&conn->super, qconn)) != 0)
        goto Fail;

    FUNC2(&conn->super);

    return;
Fail:
    FUNC1(conn);
}