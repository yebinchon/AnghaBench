
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct st_redis_socket_data_t {char const* errstr; } ;
struct TYPE_7__ {struct st_redis_socket_data_t* data; } ;
struct TYPE_8__ {TYPE_1__ ev; } ;
typedef TYPE_2__ redisAsyncContext ;
struct TYPE_9__ {scalar_t__ state; TYPE_2__* _redis; } ;
typedef TYPE_3__ h2o_redis_client_t ;


 scalar_t__ H2O_REDIS_CONNECTION_STATE_CLOSED ;
 int assert (int) ;
 int close_and_detach_connection (TYPE_3__*,char const*) ;
 int redisAsyncFree (TYPE_2__*) ;

__attribute__((used)) static void disconnect(h2o_redis_client_t *client, const char *errstr)
{
    assert(client->state != H2O_REDIS_CONNECTION_STATE_CLOSED);
    assert(client->_redis != ((void*)0));

    redisAsyncContext *redis = client->_redis;
    struct st_redis_socket_data_t *data = redis->ev.data;
    data->errstr = errstr;
    close_and_detach_connection(client, errstr);
    redisAsyncFree(redis);
}
