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
struct TYPE_7__ {char* errstr; scalar_t__ err; } ;
typedef  TYPE_1__ redisAsyncContext ;

/* Variables and functions */
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  connectCallback ; 
 int /*<<< orphan*/  disconnectCallback ; 
 int /*<<< orphan*/  getCallback ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*,char*,...) ; 
 TYPE_1__* FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

int FUNC10 (int argc, char **argv) {
    FUNC8(SIGPIPE, SIG_IGN);

    redisAsyncContext *c = FUNC5("127.0.0.1", 6379);
    if (c->err) {
        /* Let *c leak for now... */
        FUNC2("Error: %s\n", c->errstr);
        return 1;
    }

    loop = FUNC0(64);
    FUNC3(loop, c);
    FUNC6(c,connectCallback);
    FUNC7(c,disconnectCallback);
    FUNC4(c, NULL, NULL, "SET key %b", argv[argc-1], FUNC9(argv[argc-1]));
    FUNC4(c, getCallback, (char*)"end-1", "GET key");
    FUNC1(loop);
    return 0;
}