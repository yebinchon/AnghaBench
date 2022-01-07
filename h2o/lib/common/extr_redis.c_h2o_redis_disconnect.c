
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; } ;
typedef TYPE_1__ h2o_redis_client_t ;


 scalar_t__ H2O_REDIS_CONNECTION_STATE_CLOSED ;
 int disconnect (TYPE_1__*,int *) ;

void h2o_redis_disconnect(h2o_redis_client_t *client)
{
    if (client->state != H2O_REDIS_CONNECTION_STATE_CLOSED)
        disconnect(client, ((void*)0));
}
