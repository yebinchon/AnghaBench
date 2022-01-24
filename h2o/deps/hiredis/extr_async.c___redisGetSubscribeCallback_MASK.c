#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
struct TYPE_10__ {scalar_t__ type; int elements; TYPE_1__** element; } ;
typedef  TYPE_3__ redisReply ;
struct TYPE_11__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_4__ redisContext ;
typedef  int /*<<< orphan*/  redisCallback ;
struct TYPE_9__ {int /*<<< orphan*/  invalid; int /*<<< orphan*/ * channels; int /*<<< orphan*/ * patterns; } ;
struct TYPE_12__ {TYPE_2__ sub; TYPE_4__ c; } ;
typedef  TYPE_5__ redisAsyncContext ;
typedef  int /*<<< orphan*/  dictEntry ;
typedef  int /*<<< orphan*/  dict ;
struct TYPE_8__ {scalar_t__ type; char* str; scalar_t__ integer; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int REDIS_OK ; 
 scalar_t__ REDIS_REPLY_ARRAY ; 
 scalar_t__ REDIS_REPLY_INTEGER ; 
 scalar_t__ REDIS_REPLY_STRING ; 
 int /*<<< orphan*/  REDIS_SUBSCRIBED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 char FUNC9 (char) ; 

__attribute__((used)) static int FUNC10(redisAsyncContext *ac, redisReply *reply, redisCallback *dstcb) {
    redisContext *c = &(ac->c);
    dict *callbacks;
    dictEntry *de;
    int pvariant;
    char *stype;
    sds sname;

    /* Custom reply functions are not supported for pub/sub. This will fail
     * very hard when they are used... */
    if (reply->type == REDIS_REPLY_ARRAY) {
        FUNC1(reply->elements >= 2);
        FUNC1(reply->element[0]->type == REDIS_REPLY_STRING);
        stype = reply->element[0]->str;
        pvariant = (FUNC9(stype[0]) == 'p') ? 1 : 0;

        if (pvariant)
            callbacks = ac->sub.patterns;
        else
            callbacks = ac->sub.channels;

        /* Locate the right callback */
        FUNC1(reply->element[1]->type == REDIS_REPLY_STRING);
        sname = FUNC7(reply->element[1]->str,reply->element[1]->len);
        de = FUNC3(callbacks,sname);
        if (de != NULL) {
            FUNC5(dstcb,FUNC4(de),sizeof(*dstcb));

            /* If this is an unsubscribe message, remove it. */
            if (FUNC8(stype+pvariant,"unsubscribe") == 0) {
                FUNC2(callbacks,sname);

                /* If this was the last unsubscribe message, revert to
                 * non-subscribe mode. */
                FUNC1(reply->element[2]->type == REDIS_REPLY_INTEGER);
                if (reply->element[2]->integer == 0)
                    c->flags &= ~REDIS_SUBSCRIBED;
            }
        }
        FUNC6(sname);
    } else {
        /* Shift callback for invalid commands. */
        FUNC0(&ac->sub.invalid,dstcb);
    }
    return REDIS_OK;
}