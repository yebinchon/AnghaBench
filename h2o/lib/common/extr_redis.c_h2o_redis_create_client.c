
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int _timeout_entry; int state; int * loop; } ;
typedef TYPE_1__ h2o_redis_client_t ;
typedef int h2o_loop_t ;


 int H2O_REDIS_CONNECTION_STATE_CLOSED ;
 TYPE_1__* h2o_mem_alloc (size_t) ;
 int h2o_timer_init (int *,int ) ;
 int memset (TYPE_1__*,int ,size_t) ;
 int on_connect_timeout ;

h2o_redis_client_t *h2o_redis_create_client(h2o_loop_t *loop, size_t sz)
{
    h2o_redis_client_t *client = h2o_mem_alloc(sz);
    memset(client, 0, sz);

    client->loop = loop;
    client->state = H2O_REDIS_CONNECTION_STATE_CLOSED;
    h2o_timer_init(&client->_timeout_entry, on_connect_timeout);

    return client;
}
