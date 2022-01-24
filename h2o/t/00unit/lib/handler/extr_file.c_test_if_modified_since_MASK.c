#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_13__ ;
typedef  struct TYPE_15__   TYPE_12__ ;

/* Type definitions */
typedef  int ssize_t ;
struct TYPE_16__ {TYPE_2__* entries; } ;
struct TYPE_22__ {int status; TYPE_13__ headers; } ;
struct TYPE_20__ {void* path; void* method; } ;
struct TYPE_23__ {TYPE_6__ res; int /*<<< orphan*/  headers; int /*<<< orphan*/  pool; TYPE_4__ input; } ;
struct TYPE_24__ {TYPE_7__ req; TYPE_5__* body; } ;
typedef  TYPE_8__ h2o_loopback_conn_t ;
struct TYPE_21__ {scalar_t__ size; } ;
struct TYPE_19__ {int /*<<< orphan*/  hosts; } ;
struct TYPE_17__ {int len; int /*<<< orphan*/  base; } ;
struct TYPE_18__ {TYPE_1__ value; } ;
struct TYPE_15__ {TYPE_3__* globalconf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int H2O_TIMESTR_RFC1123_LEN ; 
 int /*<<< orphan*/  H2O_TOKEN_ETAG ; 
 int /*<<< orphan*/  H2O_TOKEN_IF_MODIFIED_SINCE ; 
 int /*<<< orphan*/  H2O_TOKEN_LAST_MODIFIED ; 
 TYPE_12__ ctx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (TYPE_13__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC4 (TYPE_12__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(void)
{
    char lm_date[H2O_TIMESTR_RFC1123_LEN + 1];

    { /* obtain last-modified */
        h2o_loopback_conn_t *conn = FUNC4(&ctx, ctx.globalconf->hosts);
        ssize_t lm_index;
        conn->req.input.method = FUNC3(FUNC0("GET"));
        conn->req.input.path = FUNC3(FUNC0("/"));
        FUNC6(conn);
        FUNC8(conn->req.res.status == 200);
        if ((lm_index = FUNC2(&conn->req.res.headers, H2O_TOKEN_LAST_MODIFIED, -1)) == -1) {
            FUNC8(0);
            return;
        }
        FUNC8(conn->req.res.headers.entries[lm_index].value.len == H2O_TIMESTR_RFC1123_LEN);
        FUNC7(lm_date, conn->req.res.headers.entries[lm_index].value.base, H2O_TIMESTR_RFC1123_LEN);
        lm_date[H2O_TIMESTR_RFC1123_LEN] = '\0';
        FUNC5(conn);
    }

    { /* send if-modified-since using the obtained last-modified */
        h2o_loopback_conn_t *conn = FUNC4(&ctx, ctx.globalconf->hosts);
        conn->req.input.method = FUNC3(FUNC0("GET"));
        conn->req.input.path = FUNC3(FUNC0("/"));
        FUNC1(&conn->req.pool, &conn->req.headers, H2O_TOKEN_IF_MODIFIED_SINCE, NULL, lm_date, H2O_TIMESTR_RFC1123_LEN);
        FUNC6(conn);
        FUNC8(conn->req.res.status == 304);
        FUNC8(conn->body->size == 0);
        FUNC8(FUNC2(&conn->req.res.headers, H2O_TOKEN_ETAG, -1) != -1);
        FUNC5(conn);
    }

    { /* send if-modified-since using an old date */
        h2o_loopback_conn_t *conn = FUNC4(&ctx, ctx.globalconf->hosts);
        conn->req.input.method = FUNC3(FUNC0("GET"));
        conn->req.input.path = FUNC3(FUNC0("/"));
        FUNC1(&conn->req.pool, &conn->req.headers, H2O_TOKEN_IF_MODIFIED_SINCE, NULL,
                       FUNC0("Sun, 06 Nov 1994 08:49:37 GMT"));
        FUNC6(conn);
        FUNC8(conn->req.res.status == 200);
        FUNC5(conn);
    }

    { /* send if-modified-since using a date in the future */
        h2o_loopback_conn_t *conn = FUNC4(&ctx, ctx.globalconf->hosts);
        conn->req.input.method = FUNC3(FUNC0("GET"));
        conn->req.input.path = FUNC3(FUNC0("/"));
        FUNC1(&conn->req.pool, &conn->req.headers, H2O_TOKEN_IF_MODIFIED_SINCE, NULL,
                       FUNC0("Wed, 18 May 2033 12:33:20 GMT"));
        FUNC6(conn);
        FUNC8(conn->req.res.status == 304);
        FUNC8(conn->body->size == 0);
        FUNC8(FUNC2(&conn->req.res.headers, H2O_TOKEN_ETAG, -1) != -1);
        FUNC5(conn);
    }
}