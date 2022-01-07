
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_9__ {scalar_t__ err; TYPE_2__* data; } ;
typedef TYPE_1__ redisAsyncContext ;
struct TYPE_10__ {scalar_t__ state; scalar_t__ connect_timeout; int _timeout_entry; int loop; TYPE_1__* _redis; } ;
typedef TYPE_2__ h2o_redis_client_t ;


 scalar_t__ H2O_REDIS_CONNECTION_STATE_CLOSED ;
 scalar_t__ H2O_REDIS_CONNECTION_STATE_CONNECTING ;
 scalar_t__ REDIS_OK ;
 int attach_loop (TYPE_1__*,int ) ;
 int disconnect (TYPE_2__*,int ) ;
 int h2o_fatal (char*) ;
 int h2o_redis_error_connection ;
 int h2o_timer_link (int ,scalar_t__,int *) ;
 int on_connect ;
 int on_disconnect ;
 TYPE_1__* redisAsyncConnect (char const*,int ) ;
 int redisAsyncSetConnectCallback (TYPE_1__*,int ) ;
 int redisAsyncSetDisconnectCallback (TYPE_1__*,int ) ;

void h2o_redis_connect(h2o_redis_client_t *client, const char *host, uint16_t port)
{
    if (client->state != H2O_REDIS_CONNECTION_STATE_CLOSED) {
        return;
    }

    redisAsyncContext *redis = redisAsyncConnect(host, port);
    if (redis == ((void*)0)) {
        h2o_fatal("no memory");
    }

    client->_redis = redis;
    client->_redis->data = client;
    client->state = H2O_REDIS_CONNECTION_STATE_CONNECTING;

    attach_loop(redis, client->loop);
    redisAsyncSetConnectCallback(redis, on_connect);
    redisAsyncSetDisconnectCallback(redis, on_disconnect);

    if (redis->err != REDIS_OK) {

        disconnect(client, h2o_redis_error_connection);
        return;
    }

    if (client->connect_timeout != 0)
        h2o_timer_link(client->loop, client->connect_timeout, &client->_timeout_entry);
}
