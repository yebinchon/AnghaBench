
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int h2o_memcached_context_t ;
struct TYPE_6__ {int destroy; int create; } ;
struct TYPE_4__ {int * ctx; } ;
struct TYPE_5__ {unsigned int expiration; TYPE_1__ memcached; } ;


 TYPE_3__ accept_data_callbacks ;
 TYPE_2__ async_resumption_context ;
 int create_memcached_accept_data ;
 int destroy_memcached_accept_data ;
 int h2o_socket_ssl_async_resumption_init (int ,int ) ;
 int memcached_resumption_get ;
 int memcached_resumption_new ;

void h2o_accept_setup_memcached_ssl_resumption(h2o_memcached_context_t *memc, unsigned expiration)
{
    async_resumption_context.memcached.ctx = memc;
    async_resumption_context.expiration = expiration;
    h2o_socket_ssl_async_resumption_init(memcached_resumption_get, memcached_resumption_new);
    accept_data_callbacks.create = create_memcached_accept_data;
    accept_data_callbacks.destroy = destroy_memcached_accept_data;
}
