
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int h2o_memcached_context_t ;
struct TYPE_9__ {int prefix; int num_threads; } ;
struct TYPE_11__ {TYPE_3__ memcached; } ;
struct TYPE_10__ {TYPE_5__ vars; } ;
struct TYPE_7__ {int text_protocol; int port; int host; } ;
struct TYPE_8__ {TYPE_1__ memcached; } ;
struct TYPE_12__ {int lifetime; TYPE_4__ cache; TYPE_2__ store; } ;
typedef int SSL_CTX ;


 TYPE_6__ conf ;
 int h2o_accept_setup_memcached_ssl_resumption (int *,int ) ;
 int * h2o_memcached_create_context (int ,int ,int ,int ,int ) ;
 int setup_cache_enable (int **,size_t,int) ;

__attribute__((used)) static void setup_cache_memcached(SSL_CTX **contexts, size_t num_contexts)
{
    h2o_memcached_context_t *memc_ctx =
        h2o_memcached_create_context(conf.store.memcached.host, conf.store.memcached.port, conf.store.memcached.text_protocol,
                                     conf.cache.vars.memcached.num_threads, conf.cache.vars.memcached.prefix);
    h2o_accept_setup_memcached_ssl_resumption(memc_ctx, conf.lifetime);
    setup_cache_enable(contexts, num_contexts, 1);
}
