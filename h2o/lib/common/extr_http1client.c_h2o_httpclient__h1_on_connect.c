
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int _timeout; } ;
struct st_h2o_http1client_t {TYPE_1__ super; } ;
typedef int h2o_url_t ;
typedef int h2o_socket_t ;
typedef int h2o_httpclient_t ;


 int assert (int) ;
 int h2o_timer_is_linked (int *) ;
 int on_connection_ready (struct st_h2o_http1client_t*) ;
 int setup_client (struct st_h2o_http1client_t*,int *,int *) ;

void h2o_httpclient__h1_on_connect(h2o_httpclient_t *_client, h2o_socket_t *sock, h2o_url_t *origin)
{
    struct st_h2o_http1client_t *client = (void *)_client;

    assert(!h2o_timer_is_linked(&client->super._timeout));

    setup_client(client, sock, origin);
    on_connection_ready(client);
}
