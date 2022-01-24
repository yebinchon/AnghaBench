#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_15__ ;
typedef  struct TYPE_17__   TYPE_14__ ;

/* Type definitions */
typedef  int ssize_t ;
struct TYPE_18__ {TYPE_2__* entries; } ;
struct TYPE_23__ {int status; TYPE_15__ headers; } ;
struct TYPE_22__ {void* path; void* method; } ;
struct TYPE_24__ {TYPE_5__ res; int /*<<< orphan*/  headers; int /*<<< orphan*/  pool; TYPE_4__ input; } ;
struct TYPE_26__ {TYPE_7__* body; TYPE_6__ req; } ;
typedef  TYPE_8__ h2o_loopback_conn_t ;
struct TYPE_27__ {int /*<<< orphan*/  base; int /*<<< orphan*/  len; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_9__ h2o_iovec_t ;
struct TYPE_25__ {scalar_t__ size; } ;
struct TYPE_21__ {int /*<<< orphan*/  hosts; } ;
struct TYPE_19__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
struct TYPE_20__ {TYPE_1__ value; } ;
struct TYPE_17__ {TYPE_3__* globalconf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  H2O_TOKEN_ETAG ; 
 int /*<<< orphan*/  H2O_TOKEN_IF_NONE_MATCH ; 
 TYPE_14__ ctx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_15__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC5 (TYPE_14__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*) ; 
 TYPE_9__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(void)
{
    h2o_iovec_t etag = {NULL};

    { /* obtain etag */
        h2o_loopback_conn_t *conn = FUNC5(&ctx, ctx.globalconf->hosts);
        ssize_t etag_index;
        conn->req.input.method = FUNC4(FUNC0("GET"));
        conn->req.input.path = FUNC4(FUNC0("/"));
        FUNC7(conn);
        FUNC9(conn->req.res.status == 200);
        if ((etag_index = FUNC3(&conn->req.res.headers, H2O_TOKEN_ETAG, -1)) == -1) {
            FUNC9(0);
            return;
        }
        etag = FUNC8(NULL, conn->req.res.headers.entries[etag_index].value.base,
                          conn->req.res.headers.entries[etag_index].value.len);
        FUNC6(conn);
    }

    { /* send if-non-match using the obtained etag */
        h2o_loopback_conn_t *conn = FUNC5(&ctx, ctx.globalconf->hosts);
        conn->req.input.method = FUNC4(FUNC0("GET"));
        conn->req.input.path = FUNC4(FUNC0("/"));
        FUNC2(&conn->req.pool, &conn->req.headers, H2O_TOKEN_IF_NONE_MATCH, NULL, etag.base, etag.len);
        FUNC7(conn);
        FUNC9(conn->req.res.status == 304);
        FUNC9(conn->body->size == 0);
        FUNC6(conn);
    }

    FUNC1(etag.base);
}