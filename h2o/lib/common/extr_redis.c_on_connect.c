
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ data; } ;
typedef TYPE_1__ redisAsyncContext ;
struct TYPE_6__ {int (* on_connect ) () ;int state; int _timeout_entry; } ;
typedef TYPE_2__ h2o_redis_client_t ;


 int H2O_REDIS_CONNECTION_STATE_CONNECTED ;
 int REDIS_OK ;
 int close_and_detach_connection (TYPE_2__*,int ) ;
 int h2o_redis_error_connection ;
 int h2o_timer_unlink (int *) ;
 int stub1 () ;

__attribute__((used)) static void on_connect(const redisAsyncContext *redis, int status)
{
    h2o_redis_client_t *client = (h2o_redis_client_t *)redis->data;
    if (client == ((void*)0))
        return;

    if (status != REDIS_OK) {
        close_and_detach_connection(client, h2o_redis_error_connection);
        return;
    }
    h2o_timer_unlink(&client->_timeout_entry);

    client->state = H2O_REDIS_CONNECTION_STATE_CONNECTED;
    if (client->on_connect != ((void*)0))
        client->on_connect();
}
