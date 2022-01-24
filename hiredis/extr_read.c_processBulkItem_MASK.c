#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t ridx; char* buf; int pos; int len; void* reply; TYPE_1__* fn; int /*<<< orphan*/ * rstack; } ;
typedef  TYPE_2__ redisReader ;
typedef  int /*<<< orphan*/  redisReadTask ;
struct TYPE_7__ {void* (* createString ) (int /*<<< orphan*/ *,char*,long long) ;void* (* createNil ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ LLONG_MAX ; 
 scalar_t__ REDIS_ERR ; 
 int /*<<< orphan*/  REDIS_ERR_PROTOCOL ; 
 int REDIS_OK ; 
 scalar_t__ REDIS_REPLY_NIL ; 
 scalar_t__ REDIS_REPLY_STRING ; 
 scalar_t__ SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 char* FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (char*,unsigned long,long long*) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *,char*,long long) ; 

__attribute__((used)) static int FUNC7(redisReader *r) {
    redisReadTask *cur = &(r->rstack[r->ridx]);
    void *obj = NULL;
    char *p, *s;
    long long len;
    unsigned long bytelen;
    int success = 0;

    p = r->buf+r->pos;
    s = FUNC3(p,r->len-r->pos);
    if (s != NULL) {
        p = r->buf+r->pos;
        bytelen = s-(r->buf+r->pos)+2; /* include \r\n */

        if (FUNC4(p, bytelen - 2, &len) == REDIS_ERR) {
            FUNC0(r,REDIS_ERR_PROTOCOL,
                    "Bad bulk string length");
            return REDIS_ERR;
        }

        if (len < -1 || (LLONG_MAX > SIZE_MAX && len > (long long)SIZE_MAX)) {
            FUNC0(r,REDIS_ERR_PROTOCOL,
                    "Bulk string length out of range");
            return REDIS_ERR;
        }

        if (len == -1) {
            /* The nil object can always be created. */
            if (r->fn && r->fn->createNil)
                obj = r->fn->createNil(cur);
            else
                obj = (void*)REDIS_REPLY_NIL;
            success = 1;
        } else {
            /* Only continue when the buffer contains the entire bulk item. */
            bytelen += len+2; /* include \r\n */
            if (r->pos+bytelen <= r->len) {
                if (r->fn && r->fn->createString)
                    obj = r->fn->createString(cur,s+2,len);
                else
                    obj = (void*)REDIS_REPLY_STRING;
                success = 1;
            }
        }

        /* Proceed when obj was created. */
        if (success) {
            if (obj == NULL) {
                FUNC1(r);
                return REDIS_ERR;
            }

            r->pos += bytelen;

            /* Set reply if this is the root object. */
            if (r->ridx == 0) r->reply = obj;
            FUNC2(r);
            return REDIS_OK;
        }
    }

    return REDIS_ERR;
}