#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  h2o_pathconf_t ;
struct TYPE_14__ {int status; } ;
struct TYPE_16__ {void* path; void* method; } ;
struct TYPE_17__ {TYPE_13__ res; TYPE_2__ input; } ;
struct TYPE_19__ {TYPE_4__* body; TYPE_3__ req; } ;
typedef  TYPE_5__ h2o_loopback_conn_t ;
typedef  int /*<<< orphan*/  h2o_hostconf_t ;
typedef  int /*<<< orphan*/  h2o_globalconf_t ;
struct TYPE_20__ {TYPE_1__* globalconf; } ;
struct TYPE_18__ {scalar_t__ size; } ;
struct TYPE_15__ {int /*<<< orphan*/  hosts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  H2O_TOKEN_LOCATION ; 
 int FUNC1 (TYPE_13__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_9__ ctx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC9 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  test_loop ; 

void FUNC14()
{
    h2o_globalconf_t globalconf;
    h2o_hostconf_t *hostconf;
    h2o_pathconf_t *pathconf;

    FUNC3(&globalconf);
    hostconf = FUNC4(&globalconf, FUNC8(FUNC0("default")), 65535);
    pathconf = FUNC5(hostconf, "/", 0);
    FUNC12(pathconf, 0, 301, "https://example.com/bar/");

    FUNC7(&ctx, test_loop, &globalconf);

    {
        h2o_loopback_conn_t *conn = FUNC9(&ctx, ctx.globalconf->hosts);
        conn->req.input.method = FUNC8(FUNC0("GET"));
        conn->req.input.path = FUNC8(FUNC0("/"));
        FUNC11(conn);
        FUNC13(conn->req.res.status == 301);
        FUNC13(FUNC1(&conn->req.res, H2O_TOKEN_LOCATION, "https://example.com/bar/"));
        FUNC13(conn->body->size != 0);
        FUNC10(conn);
    }
    {
        h2o_loopback_conn_t *conn = FUNC9(&ctx, ctx.globalconf->hosts);
        conn->req.input.method = FUNC8(FUNC0("GET"));
        conn->req.input.path = FUNC8(FUNC0("/abc"));
        FUNC11(conn);
        FUNC13(conn->req.res.status == 301);
        FUNC13(FUNC1(&conn->req.res, H2O_TOKEN_LOCATION, "https://example.com/bar/abc"));
        FUNC13(conn->body->size != 0);
        FUNC10(conn);
    }
    {
        h2o_loopback_conn_t *conn = FUNC9(&ctx, ctx.globalconf->hosts);
        conn->req.input.method = FUNC8(FUNC0("HEAD"));
        conn->req.input.path = FUNC8(FUNC0("/"));
        FUNC11(conn);
        FUNC13(conn->req.res.status == 301);
        FUNC13(FUNC1(&conn->req.res, H2O_TOKEN_LOCATION, "https://example.com/bar/"));
        FUNC13(conn->body->size == 0);
        FUNC10(conn);
    }

    FUNC6(&ctx);
    FUNC2(&globalconf);
}