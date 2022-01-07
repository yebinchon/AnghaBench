
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_http1client_t {scalar_t__ _do_keepalive; } ;
typedef int h2o_httpclient_t ;


 int close_client (struct st_h2o_http1client_t*) ;

__attribute__((used)) static void do_cancel(h2o_httpclient_t *_client)
{
    struct st_h2o_http1client_t *client = (struct st_h2o_http1client_t *)_client;
    client->_do_keepalive = 0;
    close_client(client);
}
