
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_http1client_t {int * sock; } ;
typedef int h2o_socket_t ;
typedef int h2o_httpclient_t ;



__attribute__((used)) static h2o_socket_t *do_get_socket(h2o_httpclient_t *_client)
{
    struct st_h2o_http1client_t *client = (void *)_client;
    return client->sock;
}
