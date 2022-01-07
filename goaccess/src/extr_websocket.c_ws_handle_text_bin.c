
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int pipeout; int (* onmessage ) (int ,TYPE_4__*) ;} ;
typedef TYPE_1__ WSServer ;
struct TYPE_13__ {int mask_offset; int fragmented; scalar_t__ opcode; int payloadsz; int payload; scalar_t__ buflen; } ;
typedef TYPE_2__ WSMessage ;
struct TYPE_14__ {scalar_t__ opcode; int fin; int mask; } ;
typedef TYPE_3__ WSFrame ;
struct TYPE_15__ {int status; TYPE_2__* message; TYPE_3__* frame; } ;
typedef TYPE_4__ WSClient ;
struct TYPE_16__ {int strict; scalar_t__ echomode; } ;


 int WS_CLOSE ;
 int WS_CLOSE_INVALID_UTF8 ;
 int WS_ERR ;
 scalar_t__ WS_OPCODE_CONTINUATION ;
 scalar_t__ WS_OPCODE_TEXT ;
 int stub1 (int ,TYPE_4__*) ;
 int ws_free_message (TYPE_4__*) ;
 int ws_handle_err (TYPE_4__*,int ,int,int *) ;
 int ws_send_data (TYPE_4__*,scalar_t__,int ,int ) ;
 int ws_unmask_payload (int ,int ,int,int ) ;
 scalar_t__ ws_validate_string (int ,int ) ;
 int ws_write_fifo (int ,int ,int ) ;
 TYPE_5__ wsconfig ;

__attribute__((used)) static void
ws_handle_text_bin (WSClient * client, WSServer * server)
{
  WSFrame **frm = &client->frame;
  WSMessage **msg = &client->message;
  int offset = (*msg)->mask_offset;


  if ((*msg)->fragmented && (*frm)->opcode != WS_OPCODE_CONTINUATION) {
    client->status = WS_ERR | WS_CLOSE;
    return;
  }



  ws_unmask_payload ((*msg)->payload, (*msg)->payloadsz, offset, (*frm)->mask);

  (*msg)->buflen = 0;

  (*msg)->fragmented = 1;

  if (!(*frm)->fin)
    return;


  if ((*msg)->opcode == WS_OPCODE_TEXT) {
    if (ws_validate_string ((*msg)->payload, (*msg)->payloadsz) != 0) {
      ws_handle_err (client, WS_CLOSE_INVALID_UTF8, WS_ERR | WS_CLOSE, ((void*)0));
      return;
    }
  }

  if ((*msg)->opcode != WS_OPCODE_CONTINUATION && server->onmessage) {

    if (wsconfig.echomode)
      ws_send_data (client, (*msg)->opcode, (*msg)->payload, (*msg)->payloadsz);

    else if (!wsconfig.strict)
      ws_write_fifo (server->pipeout, (*msg)->payload, (*msg)->payloadsz);
    else
      server->onmessage (server->pipeout, client);
  }
  ws_free_message (client);
}
