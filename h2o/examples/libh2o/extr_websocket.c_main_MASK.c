#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int /*<<< orphan*/  h2o_pathconf_t ;
typedef  int /*<<< orphan*/  h2o_hostconf_t ;
typedef  int /*<<< orphan*/  h2o_handler_t ;
struct TYPE_12__ {int /*<<< orphan*/  hosts; TYPE_2__* ctx; } ;
struct TYPE_11__ {int /*<<< orphan*/  hosts; } ;
struct TYPE_10__ {int /*<<< orphan*/  loop; } ;
struct TYPE_9__ {int /*<<< orphan*/  on_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  INT32_MAX ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 TYPE_8__ accept_ctx ; 
 TYPE_3__ config ; 
 scalar_t__ FUNC1 () ; 
 TYPE_2__ ctx ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_req ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC14(int argc, char **argv)
{
    h2o_hostconf_t *hostconf;
    h2o_pathconf_t *pathconf;

    FUNC3(&config);
    hostconf = FUNC4(&config, FUNC10(FUNC0("default")), 65535);
    pathconf = FUNC5(hostconf, "/", 0);
    FUNC7(pathconf, sizeof(h2o_handler_t))->on_req = on_req;

#if H2O_USE_LIBUV
    uv_loop_t loop;
    uv_loop_init(&loop);
    h2o_context_init(&ctx, &loop, &config);
#else
    FUNC6(&ctx, FUNC8(), &config);
#endif

    /* disabled by default: uncomment the block below to use HTTPS instead of HTTP */
    /*
    if (setup_ssl("server.crt", "server.key") != 0)
        goto Error;
    */

    accept_ctx.ctx = &ctx;
    accept_ctx.hosts = config.hosts;

    if (FUNC1() != 0) {
        FUNC2(stderr, "failed to listen to 127.0.0.1:7890:%s\n", FUNC11(errno));
        goto Error;
    }

#if H2O_USE_LIBUV
    uv_run(ctx.loop, UV_RUN_DEFAULT);
#else
    while (FUNC9(ctx.loop, INT32_MAX) == 0)
        ;
#endif

Error:
    return 1;
}