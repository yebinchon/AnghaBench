
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int h2o_socket_t ;
typedef int h2o_iovec_t ;
struct TYPE_3__ {int ctx; } ;
struct TYPE_4__ {scalar_t__ expiration; TYPE_1__ memcached; } ;


 int H2O_MEMCACHED_ENCODE_KEY ;
 int H2O_MEMCACHED_ENCODE_VALUE ;
 TYPE_2__ async_resumption_context ;
 int h2o_memcached_set (int ,int ,int ,scalar_t__,int) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void memcached_resumption_new(h2o_socket_t *sock, h2o_iovec_t session_id, h2o_iovec_t session_data)
{
    h2o_memcached_set(async_resumption_context.memcached.ctx, session_id, session_data,
                      (uint32_t)time(((void*)0)) + async_resumption_context.expiration,
                      H2O_MEMCACHED_ENCODE_KEY | H2O_MEMCACHED_ENCODE_VALUE);
}
