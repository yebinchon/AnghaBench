#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {size_t ridx; void* reply; int /*<<< orphan*/  privdata; TYPE_3__* rstack; TYPE_1__* fn; } ;
typedef  TYPE_2__ redisReader ;
struct TYPE_13__ {scalar_t__ type; long long elements; int /*<<< orphan*/  privdata; struct TYPE_13__* parent; int /*<<< orphan*/ * obj; scalar_t__ idx; } ;
typedef  TYPE_3__ redisReadTask ;
struct TYPE_11__ {void* (* createArray ) (TYPE_3__*,long long) ;void* (* createNil ) (TYPE_3__*) ;} ;

/* Variables and functions */
 long long LLONG_MAX ; 
 int REDIS_ERR ; 
 int /*<<< orphan*/  REDIS_ERR_PROTOCOL ; 
 int REDIS_OK ; 
 scalar_t__ REDIS_REPLY_MAP ; 
 scalar_t__ REDIS_REPLY_NIL ; 
 long long SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 char* FUNC3 (TYPE_2__*,int*) ; 
 int FUNC4 (char*,int,long long*) ; 
 void* FUNC5 (TYPE_3__*) ; 
 void* FUNC6 (TYPE_3__*,long long) ; 

__attribute__((used)) static int FUNC7(redisReader *r) {
    redisReadTask *cur = &(r->rstack[r->ridx]);
    void *obj;
    char *p;
    long long elements;
    int root = 0, len;

    /* Set error for nested multi bulks with depth > 7 */
    if (r->ridx == 8) {
        FUNC0(r,REDIS_ERR_PROTOCOL,
            "No support for nested multi bulk replies with depth > 7");
        return REDIS_ERR;
    }

    if ((p = FUNC3(r,&len)) != NULL) {
        if (FUNC4(p, len, &elements) == REDIS_ERR) {
            FUNC0(r,REDIS_ERR_PROTOCOL,
                    "Bad multi-bulk length");
            return REDIS_ERR;
        }

        root = (r->ridx == 0);

        if (elements < -1 || (LLONG_MAX > SIZE_MAX && elements > SIZE_MAX)) {
            FUNC0(r,REDIS_ERR_PROTOCOL,
                    "Multi-bulk length out of range");
            return REDIS_ERR;
        }

        if (elements == -1) {
            if (r->fn && r->fn->createNil)
                obj = r->fn->createNil(cur);
            else
                obj = (void*)REDIS_REPLY_NIL;

            if (obj == NULL) {
                FUNC1(r);
                return REDIS_ERR;
            }

            FUNC2(r);
        } else {
            if (cur->type == REDIS_REPLY_MAP) elements *= 2;

            if (r->fn && r->fn->createArray)
                obj = r->fn->createArray(cur,elements);
            else
                obj = (void*)(long)cur->type;

            if (obj == NULL) {
                FUNC1(r);
                return REDIS_ERR;
            }

            /* Modify task stack when there are more than 0 elements. */
            if (elements > 0) {
                cur->elements = elements;
                cur->obj = obj;
                r->ridx++;
                r->rstack[r->ridx].type = -1;
                r->rstack[r->ridx].elements = -1;
                r->rstack[r->ridx].idx = 0;
                r->rstack[r->ridx].obj = NULL;
                r->rstack[r->ridx].parent = cur;
                r->rstack[r->ridx].privdata = r->privdata;
            } else {
                FUNC2(r);
            }
        }

        /* Set reply if this is the root object. */
        if (root) r->reply = obj;
        return REDIS_OK;
    }

    return REDIS_ERR;
}