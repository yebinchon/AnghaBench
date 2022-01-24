#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_3__* path; } ;
struct TYPE_6__ {TYPE_3__* source_addr; TYPE_3__* host; } ;
struct TYPE_8__ {scalar_t__ fd; struct TYPE_8__* timeout; TYPE_2__ unix_sock; TYPE_1__ tcp; int /*<<< orphan*/ * reader; int /*<<< orphan*/ * obuf; } ;
typedef  TYPE_3__ redisContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(redisContext *c) {
    if (c == NULL)
        return;
    if (c->fd > 0)
        FUNC0(c->fd);
    if (c->obuf != NULL)
        FUNC3(c->obuf);
    if (c->reader != NULL)
        FUNC2(c->reader);
    if (c->tcp.host)
        FUNC1(c->tcp.host);
    if (c->tcp.source_addr)
        FUNC1(c->tcp.source_addr);
    if (c->unix_sock.path)
        FUNC1(c->unix_sock.path);
    if (c->timeout)
        FUNC1(c->timeout);
    FUNC1(c);
}