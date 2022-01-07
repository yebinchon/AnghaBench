
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ssl; scalar_t__ sockqueue; scalar_t__ headers; } ;
typedef TYPE_1__ WSClient ;


 int ws_clear_handshake_headers (scalar_t__) ;
 int ws_clear_queue (TYPE_1__*) ;
 int ws_shutdown_dangling_clients (TYPE_1__*) ;

__attribute__((used)) static int
ws_remove_dangling_clients (void *value, void *user_data)
{
  WSClient *client = value;
  (void) (user_data);

  if (client == ((void*)0))
    return 1;

  if (client->headers)
    ws_clear_handshake_headers (client->headers);
  if (client->sockqueue)
    ws_clear_queue (client);





  return 0;
}
