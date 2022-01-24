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
typedef  int /*<<< orphan*/  yes ;
struct TYPE_5__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ redisContext ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int REDIS_ERR ; 
 int /*<<< orphan*/  REDIS_ERR_IO ; 
 int REDIS_OK ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC3(redisContext *c) {
    int yes = 1;
    if (FUNC2(c->fd, IPPROTO_TCP, TCP_NODELAY, &yes, sizeof(yes)) == -1) {
        FUNC0(c,REDIS_ERR_IO,"setsockopt(TCP_NODELAY)");
        FUNC1(c);
        return REDIS_ERR;
    }
    return REDIS_OK;
}