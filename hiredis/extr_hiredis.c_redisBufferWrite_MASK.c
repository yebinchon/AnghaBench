#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  obuf; TYPE_1__* funcs; scalar_t__ err; } ;
typedef  TYPE_2__ redisContext ;
struct TYPE_5__ {int (* write ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int REDIS_ERR ; 
 int REDIS_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (TYPE_2__*) ; 

int FUNC5(redisContext *c, int *done) {

    /* Return early when the context has seen an error. */
    if (c->err)
        return REDIS_ERR;

    if (FUNC2(c->obuf) > 0) {
        int nwritten = c->funcs->write(c);
        if (nwritten < 0) {
            return REDIS_ERR;
        } else if (nwritten > 0) {
            if (nwritten == (signed)FUNC2(c->obuf)) {
                FUNC1(c->obuf);
                c->obuf = FUNC0();
            } else {
                FUNC3(c->obuf,nwritten,-1);
            }
        }
    }
    if (done != NULL) *done = (FUNC2(c->obuf) == 0);
    return REDIS_OK;
}