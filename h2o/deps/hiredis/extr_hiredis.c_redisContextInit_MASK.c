#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * path; } ;
struct TYPE_7__ {int /*<<< orphan*/ * source_addr; int /*<<< orphan*/ * host; } ;
struct TYPE_9__ {char* errstr; int /*<<< orphan*/ * reader; int /*<<< orphan*/ * obuf; int /*<<< orphan*/ * timeout; TYPE_2__ unix_sock; TYPE_1__ tcp; scalar_t__ err; } ;
typedef  TYPE_3__ redisContext ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 

__attribute__((used)) static redisContext *FUNC4(void) {
    redisContext *c;

    c = FUNC0(1,sizeof(redisContext));
    if (c == NULL)
        return NULL;

    c->err = 0;
    c->errstr[0] = '\0';
    c->obuf = FUNC3();
    c->reader = FUNC2();
    c->tcp.host = NULL;
    c->tcp.source_addr = NULL;
    c->unix_sock.path = NULL;
    c->timeout = NULL;

    if (c->obuf == NULL || c->reader == NULL) {
        FUNC1(c);
        return NULL;
    }

    return c;
}