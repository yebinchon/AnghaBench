
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int _timeout_entry; TYPE_1__* _redis; int (* on_close ) (char const*) ;int state; } ;
typedef TYPE_2__ h2o_redis_client_t ;
struct TYPE_4__ {int * data; } ;


 int H2O_REDIS_CONNECTION_STATE_CLOSED ;
 int assert (int ) ;
 int h2o_timer_unlink (int *) ;
 int stub1 (char const*) ;

__attribute__((used)) static void close_and_detach_connection(h2o_redis_client_t *client, const char *errstr)
{
    assert(client->_redis != ((void*)0));
    client->state = H2O_REDIS_CONNECTION_STATE_CLOSED;
    if (client->on_close != ((void*)0))
        client->on_close(errstr);

    client->_redis->data = ((void*)0);
    client->_redis = ((void*)0);
    h2o_timer_unlink(&client->_timeout_entry);
}
