
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data; } ;
typedef TYPE_1__ redisAsyncContext ;
typedef int h2o_redis_client_t ;


 int close_and_detach_connection (int *,int ) ;
 int get_error (TYPE_1__ const*) ;

__attribute__((used)) static void on_disconnect(const redisAsyncContext *redis, int status)
{
    h2o_redis_client_t *client = (h2o_redis_client_t *)redis->data;
    if (client == ((void*)0))
        return;

    close_and_detach_connection(client, get_error(redis));
}
