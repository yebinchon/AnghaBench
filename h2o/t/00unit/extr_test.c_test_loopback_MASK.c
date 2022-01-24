#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int status; } ;
struct TYPE_14__ {void* path; void* method; } ;
struct TYPE_16__ {TYPE_3__ res; TYPE_2__ input; } ;
struct TYPE_17__ {TYPE_4__ req; } ;
typedef  TYPE_5__ h2o_loopback_conn_t ;
typedef  int /*<<< orphan*/  h2o_globalconf_t ;
struct TYPE_18__ {TYPE_1__* globalconf; } ;
typedef  TYPE_6__ h2o_context_t ;
struct TYPE_13__ {int /*<<< orphan*/  hosts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC7 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  test_loop ; 

__attribute__((used)) static void FUNC11(void)
{
    h2o_globalconf_t conf;
    h2o_context_t ctx;
    h2o_loopback_conn_t *conn;

    FUNC2(&conf);
    FUNC3(&conf, FUNC6(FUNC0("default")), 65535);
    FUNC5(&ctx, test_loop, &conf);

    conn = FUNC7(&ctx, ctx.globalconf->hosts);
    conn->req.input.method = FUNC6(FUNC0("GET"));
    conn->req.input.path = FUNC6(FUNC0("/"));
    FUNC9(conn);

    FUNC10(conn->req.res.status == 404);

    FUNC8(conn);

    FUNC4(&ctx);
    FUNC1(&conf);
}