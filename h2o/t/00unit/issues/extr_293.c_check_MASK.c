#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  h2o_url_scheme_t ;
struct TYPE_15__ {TYPE_4__* entries; } ;
struct TYPE_20__ {int status; TYPE_12__ headers; } ;
struct TYPE_17__ {void* path; void* authority; int /*<<< orphan*/  const* scheme; void* method; } ;
struct TYPE_21__ {TYPE_5__ res; TYPE_2__ input; } ;
struct TYPE_22__ {TYPE_6__ req; } ;
typedef  TYPE_7__ h2o_loopback_conn_t ;
struct TYPE_18__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
struct TYPE_19__ {TYPE_3__ value; } ;
struct TYPE_16__ {int /*<<< orphan*/  hosts; } ;
struct TYPE_14__ {TYPE_1__* globalconf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_11__ ctx ; 
 int FUNC1 (TYPE_12__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (char const*,...) ; 
 TYPE_7__* FUNC3 (TYPE_11__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

__attribute__((used)) static void FUNC9(const h2o_url_scheme_t *scheme, const char *host, const char *expected)
{
    h2o_loopback_conn_t *conn = FUNC3(&ctx, ctx.globalconf->hosts);

    conn->req.input.method = FUNC2(FUNC0("GET"));
    conn->req.input.scheme = scheme;
    conn->req.input.authority = FUNC2(host, FUNC8(host));
    conn->req.input.path = FUNC2(FUNC0("/"));
    FUNC5(conn);
    FUNC7(conn->req.res.status == 200);

    ssize_t index = FUNC1(&conn->req.res.headers, FUNC0("x-authority"), -1);
    FUNC7(index != -1);

    if (index != -1) {
        FUNC7(FUNC6(conn->req.res.headers.entries[index].value.base, conn->req.res.headers.entries[index].value.len, expected,
                     FUNC8(expected)));
    }

    FUNC4(conn);
}