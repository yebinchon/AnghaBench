
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_socket_ssl_resumption_new_cb ;
typedef int h2o_socket_ssl_resumption_get_async_cb ;


 int resumption_get_async ;
 int resumption_new ;

void h2o_socket_ssl_async_resumption_init(h2o_socket_ssl_resumption_get_async_cb get_async_cb,
                                          h2o_socket_ssl_resumption_new_cb new_cb)
{
    resumption_get_async = get_async_cb;
    resumption_new = new_cb;
}
