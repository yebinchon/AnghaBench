
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int closing; } ;
typedef TYPE_1__ WSServer ;
struct TYPE_8__ {int status; } ;
typedef TYPE_2__ WSClient ;


 int WS_SENDING ;
 int handle_tcp_close (int,TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static void
handle_read_close (int conn, WSClient * client, WSServer * server)
{
  if (client->status & WS_SENDING) {
    server->closing = 1;
    return;
  }
  handle_tcp_close (conn, client, server);
}
