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
struct st_redis_socket_data_t {char* errstr; } ;
typedef  int /*<<< orphan*/  redisReply ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_6__ {TYPE_1__ ev; } ;
typedef  TYPE_2__ redisAsyncContext ;
typedef  int /*<<< orphan*/  h2o_redis_command_t ;

/* Variables and functions */
 char* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void FUNC2(redisAsyncContext *redis, void *_reply, void *privdata)
{
    redisReply *reply = (redisReply *)_reply;
    h2o_redis_command_t *command = (h2o_redis_command_t *)privdata;
    const char *errstr = ((struct st_redis_socket_data_t *)redis->ev.data)->errstr;
    if (errstr == NULL)
        errstr = FUNC0(redis);
    FUNC1(command, reply, errstr);
}