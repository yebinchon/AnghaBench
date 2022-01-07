
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int destroy; int create; } ;
struct TYPE_4__ {void* prefix; int port; void* host; } ;
struct TYPE_5__ {unsigned int expiration; TYPE_1__ redis; } ;


 int SIZE_MAX ;
 TYPE_3__ accept_data_callbacks ;
 TYPE_2__ async_resumption_context ;
 int create_redis_accept_data ;
 int destroy_redis_accept_data ;
 int h2o_socket_ssl_async_resumption_init (int ,int ) ;
 void* h2o_strdup (int *,char const*,int ) ;
 int redis_resumption_get ;
 int redis_resumption_new ;

void h2o_accept_setup_redis_ssl_resumption(const char *host, uint16_t port, unsigned expiration, const char *prefix)
{
    async_resumption_context.redis.host = h2o_strdup(((void*)0), host, SIZE_MAX);
    async_resumption_context.redis.port = port;
    async_resumption_context.redis.prefix = h2o_strdup(((void*)0), prefix, SIZE_MAX);
    async_resumption_context.expiration = expiration;

    h2o_socket_ssl_async_resumption_init(redis_resumption_get, redis_resumption_new);

    accept_data_callbacks.create = create_redis_accept_data;
    accept_data_callbacks.destroy = destroy_redis_accept_data;
}
