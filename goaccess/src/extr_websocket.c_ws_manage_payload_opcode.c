
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int WSServer ;
struct TYPE_9__ {int opcode; int fragmented; } ;
typedef TYPE_1__ WSMessage ;
struct TYPE_10__ {int opcode; } ;
typedef TYPE_2__ WSFrame ;
struct TYPE_11__ {int status; TYPE_1__* message; TYPE_2__* frame; } ;
typedef TYPE_3__ WSClient ;


 int LOG (char*) ;
 int WS_CLOSE ;
 int WS_ERR ;





 int ws_handle_close (TYPE_3__*) ;
 int ws_handle_ping (TYPE_3__*) ;
 int ws_handle_pong (TYPE_3__*) ;
 int ws_handle_text_bin (TYPE_3__*,int *) ;

__attribute__((used)) static void
ws_manage_payload_opcode (WSClient * client, WSServer * server)
{
  WSFrame **frm = &client->frame;
  WSMessage **msg = &client->message;

  switch ((*frm)->opcode) {
  case 131:
    LOG (("CONTINUATION\n"));

    if (!(*msg)->fragmented) {
      client->status = WS_ERR | WS_CLOSE;
      break;
    }
    ws_handle_text_bin (client, server);
    break;
  case 128:
  case 132:
    LOG (("TEXT\n"));
    client->message->opcode = (*frm)->opcode;
    ws_handle_text_bin (client, server);
    break;
  case 129:
    LOG (("PONG\n"));
    ws_handle_pong (client);
    break;
  case 130:
    LOG (("PING\n"));
    ws_handle_ping (client);
    break;
  default:
    LOG (("CLOSE\n"));
    ws_handle_close (client);
  }
}
