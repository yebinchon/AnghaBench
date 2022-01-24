#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int ridx; int err; char* errstr; scalar_t__ len; scalar_t__ pos; int /*<<< orphan*/ * buf; int /*<<< orphan*/ * reply; TYPE_1__* fn; } ;
typedef  TYPE_2__ redisReader ;
struct TYPE_4__ {int /*<<< orphan*/  (* freeObject ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(redisReader *r, int type, const char *str) {
    size_t len;

    if (r->reply != NULL && r->fn && r->fn->freeObject) {
        r->fn->freeObject(r->reply);
        r->reply = NULL;
    }

    /* Clear input buffer on errors. */
    if (r->buf != NULL) {
        FUNC1(r->buf);
        r->buf = NULL;
        r->pos = r->len = 0;
    }

    /* Reset task stack. */
    r->ridx = -1;

    /* Set error. */
    r->err = type;
    len = FUNC2(str);
    len = len < (sizeof(r->errstr)-1) ? len : (sizeof(r->errstr)-1);
    FUNC0(r->errstr,str,len);
    r->errstr[len] = '\0';
}