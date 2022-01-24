#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int fd; } ;
typedef  TYPE_1__ redisContext ;

/* Variables and functions */
 int AF_INET ; 
 int REDIS_ERR ; 
 int /*<<< orphan*/  REDIS_ERR_IO ; 
 int REDIS_OK ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(redisContext *c, int type) {
    int s;
    if ((s = FUNC2(type, SOCK_STREAM, 0)) == -1) {
        FUNC0(c,REDIS_ERR_IO,NULL);
        return REDIS_ERR;
    }
    c->fd = s;
    if (type == AF_INET) {
        if (FUNC1(c) == REDIS_ERR) {
            return REDIS_ERR;
        }
    }
    return REDIS_OK;
}