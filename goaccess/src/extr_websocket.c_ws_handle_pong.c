
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fin; } ;
typedef TYPE_1__ WSFrame ;
struct TYPE_7__ {TYPE_1__* frame; } ;
typedef TYPE_2__ WSClient ;


 int WS_CLOSE ;
 int WS_CLOSE_PROTO_ERR ;
 int WS_ERR ;
 int ws_free_message (TYPE_2__*) ;
 int ws_handle_err (TYPE_2__*,int ,int,int *) ;

__attribute__((used)) static void
ws_handle_pong (WSClient * client)
{
  WSFrame **frm = &client->frame;

  if (!(*frm)->fin) {
    ws_handle_err (client, WS_CLOSE_PROTO_ERR, WS_ERR | WS_CLOSE, ((void*)0));
    return;
  }
  ws_free_message (client);
}
