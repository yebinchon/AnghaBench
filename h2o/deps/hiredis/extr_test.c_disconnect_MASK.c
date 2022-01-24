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
typedef  int /*<<< orphan*/  redisReply ;
typedef  int /*<<< orphan*/  redisContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(redisContext *c, int keep_fd) {
    redisReply *reply;

    /* Make sure we're on DB 9. */
    reply = FUNC2(c,"SELECT 9");
    FUNC0(reply != NULL);
    FUNC1(reply);
    reply = FUNC2(c,"FLUSHDB");
    FUNC0(reply != NULL);
    FUNC1(reply);

    /* Free the context as well, but keep the fd if requested. */
    if (keep_fd)
        return FUNC4(c);
    FUNC3(c);
    return -1;
}