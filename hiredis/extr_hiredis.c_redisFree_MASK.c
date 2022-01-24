#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_4__* path; } ;
struct TYPE_11__ {TYPE_4__* source_addr; TYPE_4__* host; } ;
struct TYPE_12__ {int /*<<< orphan*/  privdata; TYPE_2__* funcs; struct TYPE_12__* saddr; struct TYPE_12__* timeout; TYPE_1__ unix_sock; TYPE_3__ tcp; int /*<<< orphan*/  reader; int /*<<< orphan*/  obuf; } ;
typedef  TYPE_4__ redisContext ;
struct TYPE_10__ {int /*<<< orphan*/  (* free_privdata ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(redisContext *c) {
    if (c == NULL)
        return;
    FUNC2(c);

    FUNC4(c->obuf);
    FUNC3(c->reader);
    FUNC0(c->tcp.host);
    FUNC0(c->tcp.source_addr);
    FUNC0(c->unix_sock.path);
    FUNC0(c->timeout);
    FUNC0(c->saddr);
    if (c->funcs->free_privdata) {
        c->funcs->free_privdata(c->privdata);
    }
    FUNC1(c, 0xff, sizeof(*c));
    FUNC0(c);
}