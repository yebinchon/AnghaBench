#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {size_t ridx; void* reply; TYPE_1__* fn; TYPE_3__* rstack; } ;
typedef  TYPE_2__ redisReader ;
struct TYPE_12__ {scalar_t__ type; } ;
typedef  TYPE_3__ redisReadTask ;
struct TYPE_10__ {void* (* createString ) (TYPE_3__*,char*,int) ;void* (* createInteger ) (TYPE_3__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int REDIS_ERR ; 
 int REDIS_OK ; 
 scalar_t__ REDIS_REPLY_INTEGER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 char* FUNC2 (TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (TYPE_3__*,char*,int) ; 

__attribute__((used)) static int FUNC6(redisReader *r) {
    redisReadTask *cur = &(r->rstack[r->ridx]);
    void *obj;
    char *p;
    int len;

    if ((p = FUNC2(r,&len)) != NULL) {
        if (cur->type == REDIS_REPLY_INTEGER) {
            if (r->fn && r->fn->createInteger)
                obj = r->fn->createInteger(cur,FUNC3(p));
            else
                obj = (void*)REDIS_REPLY_INTEGER;
        } else {
            /* Type will be error or status. */
            if (r->fn && r->fn->createString)
                obj = r->fn->createString(cur,p,len);
            else
                obj = (void*)(size_t)(cur->type);
        }

        if (obj == NULL) {
            FUNC0(r);
            return REDIS_ERR;
        }

        /* Set reply if this is the root object. */
        if (r->ridx == 0) r->reply = obj;
        FUNC1(r);
        return REDIS_OK;
    }

    return REDIS_ERR;
}