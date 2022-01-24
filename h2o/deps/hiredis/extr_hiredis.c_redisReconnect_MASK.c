#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  path; } ;
struct TYPE_8__ {int /*<<< orphan*/  source_addr; int /*<<< orphan*/  port; int /*<<< orphan*/  host; } ;
struct TYPE_10__ {scalar_t__ fd; scalar_t__ connection_type; int /*<<< orphan*/  timeout; TYPE_2__ unix_sock; TYPE_1__ tcp; int /*<<< orphan*/  reader; int /*<<< orphan*/  obuf; int /*<<< orphan*/  errstr; scalar_t__ err; } ;
typedef  TYPE_3__ redisContext ;

/* Variables and functions */
 scalar_t__ REDIS_CONN_TCP ; 
 scalar_t__ REDIS_CONN_UNIX ; 
 int REDIS_ERR ; 
 int /*<<< orphan*/  REDIS_ERR_OTHER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(redisContext *c) {
    c->err = 0;
    FUNC2(c->errstr, '\0', FUNC9(c->errstr));

    if (c->fd > 0) {
        FUNC1(c->fd);
    }

    FUNC8(c->obuf);
    FUNC6(c->reader);

    c->obuf = FUNC7();
    c->reader = FUNC5();

    if (c->connection_type == REDIS_CONN_TCP) {
        return FUNC3(c, c->tcp.host, c->tcp.port,
                c->timeout, c->tcp.source_addr);
    } else if (c->connection_type == REDIS_CONN_UNIX) {
        return FUNC4(c, c->unix_sock.path, c->timeout);
    } else {
        /* Something bad happened here and shouldn't have. There isn't
           enough information in the context to reconnect. */
        FUNC0(c,REDIS_ERR_OTHER,"Not enough information to reconnect");
    }

    return REDIS_ERR;
}