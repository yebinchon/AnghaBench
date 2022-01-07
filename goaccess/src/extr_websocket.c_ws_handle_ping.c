
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int payloadsz; char* payload; int fragmented; scalar_t__ buflen; } ;
typedef TYPE_1__ WSMessage ;
struct TYPE_9__ {int payloadlen; int mask; int fin; } ;
typedef TYPE_2__ WSFrame ;
struct TYPE_10__ {int status; TYPE_1__* message; TYPE_2__* frame; } ;
typedef TYPE_3__ WSClient ;


 int WS_CLOSE ;
 int WS_CLOSE_PROTO_ERR ;
 int WS_ERR ;
 int WS_OPCODE_PONG ;
 int free (char*) ;
 int memcpy (char*,char*,int) ;
 char* realloc (char*,int) ;
 int ws_free_message (TYPE_3__*) ;
 int ws_handle_err (TYPE_3__*,int ,int,int *) ;
 int ws_send_frame (TYPE_3__*,int ,char*,int) ;
 int ws_unmask_payload (char*,int,int ,int ) ;
 char* xcalloc (int,int) ;

__attribute__((used)) static void
ws_handle_ping (WSClient * client)
{
  WSFrame **frm = &client->frame;
  WSMessage **msg = &client->message;
  char *buf = ((void*)0), *tmp = ((void*)0);
  int pos = 0, len = (*frm)->payloadlen, newlen = 0;



  if (!(*frm)->fin) {
    ws_handle_err (client, WS_CLOSE_PROTO_ERR, WS_ERR | WS_CLOSE, ((void*)0));
    return;
  }



  if ((*frm)->payloadlen > 125) {
    ws_handle_err (client, WS_CLOSE_PROTO_ERR, WS_ERR | WS_CLOSE, ((void*)0));
    return;
  }


  if (len == 0) {
    ws_send_frame (client, WS_OPCODE_PONG, ((void*)0), 0);
    return;
  }


  pos = (*msg)->payloadsz - len;
  buf = xcalloc (len, sizeof (char));
  memcpy (buf, (*msg)->payload + pos, len);


  ws_unmask_payload (buf, len, 0, (*frm)->mask);


  newlen = (*msg)->payloadsz - len;
  tmp = realloc ((*msg)->payload, newlen);
  if (tmp == ((void*)0) && newlen > 0) {
    free ((*msg)->payload);
    free (buf);

    (*msg)->payload = ((void*)0);
    client->status = WS_ERR | WS_CLOSE;
    return;
  }

  (*msg)->payload = tmp;
  (*msg)->payloadsz -= len;

  ws_send_frame (client, WS_OPCODE_PONG, buf, len);

  (*msg)->buflen = 0;

  if (!(*msg)->fragmented) {
    ws_free_message (client);
  }
  free (buf);
}
