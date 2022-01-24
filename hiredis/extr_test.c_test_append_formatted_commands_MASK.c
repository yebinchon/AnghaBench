#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct config {int dummy; } ;
typedef  int /*<<< orphan*/  redisReply ;
typedef  int /*<<< orphan*/  redisContext ;

/* Variables and functions */
 scalar_t__ REDIS_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct config) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC6 (char**,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct config config) {
    redisContext *c;
    redisReply *reply;
    char *cmd;
    int len;

    c = FUNC2(config);

    FUNC8("Append format command: ");

    len = FUNC6(&cmd, "SET foo bar");

    FUNC9(FUNC5(c, cmd, len) == REDIS_OK);

    FUNC0(FUNC7(c, (void*)&reply) == REDIS_OK);

    FUNC3(cmd);
    FUNC4(reply);

    FUNC1(c, 0);
}