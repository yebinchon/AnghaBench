
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int WSServer ;
struct TYPE_13__ {int buflen; scalar_t__ payloadsz; scalar_t__ mask_offset; int * payload; } ;
typedef TYPE_1__ WSMessage ;
struct TYPE_14__ {int payloadlen; } ;
typedef TYPE_2__ WSFrame ;
struct TYPE_15__ {TYPE_1__* message; TYPE_2__* frame; } ;
typedef TYPE_3__ WSClient ;


 int WS_CLOSE ;
 int WS_ERR ;
 int WS_READING ;
 TYPE_1__* new_wsmessage () ;
 int ws_free_frame (TYPE_3__*) ;
 int ws_manage_payload_opcode (TYPE_3__*,int *) ;
 int ws_read_payload (TYPE_3__*,TYPE_1__*,scalar_t__,int) ;
 int ws_realloc_frm_payload (TYPE_2__*,TYPE_1__*) ;
 int ws_set_status (TYPE_3__*,int,int) ;
 int * xcalloc (int,int) ;

__attribute__((used)) static int
ws_get_frm_payload (WSClient * client, WSServer * server)
{
  WSFrame **frm = ((void*)0);
  WSMessage **msg = ((void*)0);
  int bytes = 0, readh = 0, need = 0;

  if (client->message == ((void*)0))
    client->message = new_wsmessage ();

  frm = &client->frame;
  msg = &client->message;


  if ((*msg)->payload == ((void*)0) && (*frm)->payloadlen)
    (*msg)->payload = xcalloc ((*frm)->payloadlen, sizeof (char));

  else if ((*msg)->buflen == 0 && (*frm)->payloadlen) {
    if (ws_realloc_frm_payload ((*frm), (*msg)) == 1)
      return ws_set_status (client, WS_ERR | WS_CLOSE, 0);
  }

  readh = (*msg)->buflen;
  need = (*frm)->payloadlen - readh;
  if (need > 0) {
    if ((bytes = ws_read_payload (client, (*msg), (*msg)->payloadsz, need)) < 0)
      return bytes;
    if (bytes != need)
      return ws_set_status (client, WS_READING, bytes);
  }

  (*msg)->mask_offset = (*msg)->payloadsz - (*msg)->buflen;

  ws_manage_payload_opcode (client, server);
  ws_free_frame (client);

  return bytes;
}
