
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct st_redis_socket_data_t {char* errstr; } ;
typedef int redisReply ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_6__ {TYPE_1__ ev; } ;
typedef TYPE_2__ redisAsyncContext ;
typedef int h2o_redis_command_t ;


 char* get_error (TYPE_2__*) ;
 int handle_reply (int *,int *,char const*) ;

__attribute__((used)) static void on_command(redisAsyncContext *redis, void *_reply, void *privdata)
{
    redisReply *reply = (redisReply *)_reply;
    h2o_redis_command_t *command = (h2o_redis_command_t *)privdata;
    const char *errstr = ((struct st_redis_socket_data_t *)redis->ev.data)->errstr;
    if (errstr == ((void*)0))
        errstr = get_error(redis);
    handle_reply(command, reply, errstr);
}
