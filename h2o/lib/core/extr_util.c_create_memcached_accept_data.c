
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct st_h2o_accept_data_t {int dummy; } ;
struct st_h2o_memcached_resumption_accept_data_t {struct st_h2o_accept_data_t super; int * get_req; } ;
typedef int h2o_socket_t ;
typedef int h2o_accept_ctx_t ;


 scalar_t__ create_accept_data (int *,int *,struct timeval,int ,int) ;
 int on_memcached_accept_timeout ;

__attribute__((used)) static struct st_h2o_accept_data_t *create_memcached_accept_data(h2o_accept_ctx_t *ctx, h2o_socket_t *sock,
                                                                 struct timeval connected_at)
{
    struct st_h2o_memcached_resumption_accept_data_t *data = (struct st_h2o_memcached_resumption_accept_data_t *)create_accept_data(
        ctx, sock, connected_at, on_memcached_accept_timeout, sizeof(struct st_h2o_memcached_resumption_accept_data_t));
    data->get_req = ((void*)0);
    return &data->super;
}
