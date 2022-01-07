
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; int _timeout_entry; } ;
typedef TYPE_1__ h2o_redis_client_t ;


 scalar_t__ H2O_REDIS_CONNECTION_STATE_CLOSED ;
 int disconnect (TYPE_1__*,int *) ;
 int free (TYPE_1__*) ;
 int h2o_timer_unlink (int *) ;

void h2o_redis_free(h2o_redis_client_t *client)
{
    if (client->state != H2O_REDIS_CONNECTION_STATE_CLOSED)
        disconnect(client, ((void*)0));
    h2o_timer_unlink(&client->_timeout_entry);
    free(client);
}
