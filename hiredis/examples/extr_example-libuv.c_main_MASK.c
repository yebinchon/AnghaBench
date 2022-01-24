#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_loop_t ;
struct TYPE_7__ {char* errstr; scalar_t__ err; } ;
typedef  TYPE_1__ redisAsyncContext ;

/* Variables and functions */
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  connectCallback ; 
 int /*<<< orphan*/  disconnectCallback ; 
 int /*<<< orphan*/  getCallback ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,char*,...) ; 
 TYPE_1__* FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC10 (int argc, char **argv) {
    FUNC6(SIGPIPE, SIG_IGN);
    uv_loop_t* loop = FUNC8();

    redisAsyncContext *c = FUNC2("127.0.0.1", 6379);
    if (c->err) {
        /* Let *c leak for now... */
        FUNC0("Error: %s\n", c->errstr);
        return 1;
    }

    FUNC5(c,loop);
    FUNC3(c,connectCallback);
    FUNC4(c,disconnectCallback);
    FUNC1(c, NULL, NULL, "SET key %b", argv[argc-1], FUNC7(argv[argc-1]));
    FUNC1(c, getCallback, (char*)"end-1", "GET key");
    FUNC9(loop, UV_RUN_DEFAULT);
    return 0;
}