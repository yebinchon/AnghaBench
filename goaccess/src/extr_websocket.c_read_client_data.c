
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WSServer ;
struct TYPE_7__ {TYPE_1__* headers; } ;
typedef TYPE_2__ WSClient ;
struct TYPE_6__ {scalar_t__ reading; } ;


 int ws_get_handshake (TYPE_2__*,int *) ;
 int ws_get_message (TYPE_2__*,int *) ;

__attribute__((used)) static int
read_client_data (WSClient * client, WSServer * server)
{
  int bytes = 0;


  if ((!(client->headers) || (client->headers->reading)))
    bytes = ws_get_handshake (client, server);

  else
    bytes = ws_get_message (client, server);

  return bytes;
}
