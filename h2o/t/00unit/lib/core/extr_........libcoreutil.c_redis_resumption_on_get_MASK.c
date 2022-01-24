#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  sock; } ;
struct st_h2o_redis_resumption_accept_data_t {TYPE_1__ super; int /*<<< orphan*/ * get_command; } ;
struct TYPE_9__ {scalar_t__ type; int /*<<< orphan*/  len; int /*<<< orphan*/  str; } ;
typedef  TYPE_2__ redisReply ;
struct TYPE_10__ {int /*<<< orphan*/ * base; } ;
typedef  TYPE_3__ h2o_iovec_t ;

/* Variables and functions */
 scalar_t__ REDIS_REPLY_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__) ; 

__attribute__((used)) static void FUNC4(redisReply *reply, void *_accept_data, const char *errstr)
{
    struct st_h2o_redis_resumption_accept_data_t *accept_data = _accept_data;
    accept_data->get_command = NULL;

    h2o_iovec_t session_data;
    if (reply != NULL && reply->type == REDIS_REPLY_STRING) {
        session_data = FUNC1(NULL, reply->str, reply->len);
    } else {
        session_data = FUNC2(NULL, 0);
    }

    FUNC3(accept_data->super.sock, session_data);

    if (session_data.base != NULL)
        FUNC0(session_data.base);
}