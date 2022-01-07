
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int _timeout; int * _connect_req; } ;
typedef TYPE_1__ h2o_httpclient_t ;


 int free (TYPE_1__*) ;
 int h2o_socketpool_cancel_connect (int *) ;
 scalar_t__ h2o_timer_is_linked (int *) ;
 int h2o_timer_unlink (int *) ;

__attribute__((used)) static void close_client(h2o_httpclient_t *client)
{
    if (client->_connect_req != ((void*)0)) {
        h2o_socketpool_cancel_connect(client->_connect_req);
        client->_connect_req = ((void*)0);
    }

    if (h2o_timer_is_linked(&client->_timeout))
        h2o_timer_unlink(&client->_timeout);

    free(client);
}
