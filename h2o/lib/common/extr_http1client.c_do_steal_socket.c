
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct st_h2o_http1client_t {TYPE_1__* sock; scalar_t__ bytes_to_consume; } ;
struct TYPE_4__ {int input; } ;
typedef TYPE_1__ h2o_socket_t ;
typedef int h2o_httpclient_t ;


 int h2o_buffer_consume (int *,scalar_t__) ;
 int h2o_socket_read_stop (TYPE_1__*) ;

__attribute__((used)) static h2o_socket_t *do_steal_socket(h2o_httpclient_t *_client)
{
    struct st_h2o_http1client_t *client = (void *)_client;
    h2o_socket_t *sock = client->sock;
    h2o_socket_read_stop(sock);
    h2o_buffer_consume(&sock->input, client->bytes_to_consume);
    client->bytes_to_consume = 0;
    client->sock = ((void*)0);
    return sock;
}
