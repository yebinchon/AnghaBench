#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int type; size_t elements; int /*<<< orphan*/  len; int /*<<< orphan*/  str; int /*<<< orphan*/  integer; struct TYPE_3__** element; } ;
typedef  TYPE_1__ redisReply ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  size_t mrb_int ;

/* Variables and functions */
#define  REDIS_REPLY_ARRAY 133 
#define  REDIS_REPLY_ERROR 132 
#define  REDIS_REPLY_INTEGER 131 
#define  REDIS_REPLY_NIL 130 
#define  REDIS_REPLY_STATUS 129 
#define  REDIS_REPLY_STRING 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value FUNC9(mrb_state *mrb, redisReply *reply, mrb_value command)
{
    mrb_value decoded;

    switch (reply->type) {
    case REDIS_REPLY_STRING:
    case REDIS_REPLY_STATUS:
        decoded = FUNC8(mrb, reply->str, reply->len);
        break;
    case REDIS_REPLY_ARRAY:
        decoded = FUNC2(mrb, (mrb_int)reply->elements);
        mrb_int i;
        for (i = 0; i != reply->elements; ++i)
            FUNC3(mrb, decoded, i, FUNC9(mrb, reply->element[i], command));
        break;
    case REDIS_REPLY_INTEGER:
        decoded = FUNC4((mrb_int)reply->integer);
        break;
    case REDIS_REPLY_NIL:
        decoded = FUNC6();
        break;
    case REDIS_REPLY_ERROR: {
        mrb_value error_klass = FUNC7(FUNC1(mrb, "CommandError"));
        decoded = FUNC5(mrb, error_klass, "new", 2, FUNC8(mrb, reply->str, reply->len), command);
    } break;
    default:
        FUNC0(!"FIXME");
    }

    return decoded;
}