#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int /*<<< orphan*/  h2o_pathconf_t ;
typedef  int /*<<< orphan*/  h2o_hostconf_t ;
typedef  int /*<<< orphan*/  h2o_access_log_filehandle_t ;
struct TYPE_10__ {int /*<<< orphan*/  hosts; TYPE_1__* ctx; } ;
struct TYPE_9__ {int /*<<< orphan*/  hosts; } ;
struct TYPE_8__ {int /*<<< orphan*/  loop; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_LOGCONF_ESCAPE_APACHE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  INT32_MAX ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 scalar_t__ USE_HTTPS ; 
 scalar_t__ USE_MEMCACHED ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 TYPE_7__ accept_ctx ; 
 int /*<<< orphan*/  chunked_test ; 
 TYPE_2__ config ; 
 scalar_t__ FUNC1 () ; 
 TYPE_1__ ctx ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  h2o_memcached_receiver ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  libmemcached_receiver ; 
 int /*<<< orphan*/  post_test ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reproxy_test ; 
 scalar_t__ FUNC16 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC21(int argc, char **argv)
{
    h2o_hostconf_t *hostconf;
    h2o_access_log_filehandle_t *logfh = FUNC3("/dev/stdout", NULL, H2O_LOGCONF_ESCAPE_APACHE);
    h2o_pathconf_t *pathconf;

    FUNC17(SIGPIPE, SIG_IGN);

    FUNC5(&config);
    hostconf = FUNC6(&config, FUNC12(FUNC0("default")), 65535);

    pathconf = FUNC15(hostconf, "/post-test", post_test);
    if (logfh != NULL)
        FUNC4(pathconf, logfh);

    pathconf = FUNC15(hostconf, "/chunked-test", chunked_test);
    if (logfh != NULL)
        FUNC4(pathconf, logfh);

    pathconf = FUNC15(hostconf, "/reproxy-test", reproxy_test);
    FUNC14(pathconf);
    if (logfh != NULL)
        FUNC4(pathconf, logfh);

    pathconf = FUNC7(hostconf, "/", 0);
    FUNC11(pathconf, "examples/doc_root", NULL, NULL, 0);
    if (logfh != NULL)
        FUNC4(pathconf, logfh);

#if H2O_USE_LIBUV
    uv_loop_t loop;
    uv_loop_init(&loop);
    h2o_context_init(&ctx, &loop, &config);
#else
    FUNC8(&ctx, FUNC9(), &config);
#endif
    if (USE_MEMCACHED)
        FUNC13(ctx.queue, &libmemcached_receiver, h2o_memcached_receiver);

    if (USE_HTTPS && FUNC16("examples/h2o/server.crt", "examples/h2o/server.key",
                               "DEFAULT:!MD5:!DSS:!DES:!RC4:!RC2:!SEED:!IDEA:!NULL:!ADH:!EXP:!SRP:!PSK") != 0)
        goto Error;

    accept_ctx.ctx = &ctx;
    accept_ctx.hosts = config.hosts;

    if (FUNC1() != 0) {
        FUNC2(stderr, "failed to listen to 127.0.0.1:7890:%s\n", FUNC18(errno));
        goto Error;
    }

#if H2O_USE_LIBUV
    uv_run(ctx.loop, UV_RUN_DEFAULT);
#else
    while (FUNC10(ctx.loop, INT32_MAX) == 0)
        ;
#endif

Error:
    return 1;
}