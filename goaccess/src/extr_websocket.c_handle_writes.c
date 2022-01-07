
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int colist; } ;
typedef TYPE_1__ WSServer ;
struct TYPE_11__ {int status; int * sockqueue; } ;
typedef TYPE_2__ WSClient ;


 int WS_CLOSE ;
 int WS_SENDING ;
 scalar_t__ handle_ssl_pending_rw (int,TYPE_1__*,TYPE_2__*) ;
 int handle_write_close (int,TYPE_2__*,TYPE_1__*) ;
 TYPE_2__* ws_get_client_from_list (int,int *) ;
 int ws_respond (TYPE_2__*,int *,int ) ;

__attribute__((used)) static void
handle_writes (int conn, WSServer * server)
{
  WSClient *client = ((void*)0);

  if (!(client = ws_get_client_from_list (conn, &server->colist)))
    return;






  ws_respond (client, ((void*)0), 0);

  if (client->sockqueue == ((void*)0))
    client->status &= ~WS_SENDING;




  if ((client->status & WS_CLOSE) && !(client->status & WS_SENDING))
    handle_write_close (conn, client, server);
}
