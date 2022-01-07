
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int buflen; scalar_t__ payloadlen; int payload_offset; scalar_t__ reading; int buf; } ;
typedef TYPE_1__ WSFrame ;
struct TYPE_14__ {TYPE_1__* frame; } ;
typedef TYPE_2__ WSClient ;
struct TYPE_15__ {scalar_t__ max_frm_size; } ;


 int WS_CLOSE ;
 int WS_CLOSE_TOO_LARGE ;
 int WS_ERR ;
 int WS_OK ;
 int WS_READING ;
 TYPE_1__* new_wsframe () ;
 int ws_error (TYPE_2__*,int ,char*) ;
 int ws_read_header (TYPE_2__*,TYPE_1__*,int,int) ;
 int ws_set_extended_header_size (int ,int*) ;
 scalar_t__ ws_set_front_header_fields (TYPE_2__*) ;
 int ws_set_masking_key (TYPE_1__*,int ) ;
 int ws_set_payloadlen (TYPE_1__*,int ) ;
 int ws_set_status (TYPE_2__*,int,int) ;
 TYPE_3__ wsconfig ;

__attribute__((used)) static int
ws_get_frm_header (WSClient * client)
{
  WSFrame **frm = ((void*)0);
  int bytes = 0, readh = 0, need = 0, offset = 0, extended = 0;

  if (client->frame == ((void*)0))
    client->frame = new_wsframe ();

  frm = &client->frame;


  readh = (*frm)->buflen;
  need = 2 - readh;
  if (need > 0) {
    if ((bytes = ws_read_header (client, (*frm), readh, need)) < 1)
      return bytes;
    if (bytes != need)
      return ws_set_status (client, WS_READING, bytes);
  }
  offset += 2;

  if (ws_set_front_header_fields (client) != 0)
    return bytes;

  ws_set_extended_header_size ((*frm)->buf, &extended);

  readh = (*frm)->buflen;
  need = (extended + offset) - readh;
  if (need > 0) {
    if ((bytes = ws_read_header (client, (*frm), readh, need)) < 1)
      return bytes;
    if (bytes != need)
      return ws_set_status (client, WS_READING, bytes);
  }
  offset += extended;


  readh = (*frm)->buflen;
  need = (4 + offset) - readh;
  if (need > 0) {
    if ((bytes = ws_read_header (client, (*frm), readh, need)) < 1)
      return bytes;
    if (bytes != need)
      return ws_set_status (client, WS_READING, bytes);
  }
  offset += 4;

  ws_set_payloadlen ((*frm), (*frm)->buf);
  ws_set_masking_key ((*frm), (*frm)->buf);

  if ((*frm)->payloadlen > wsconfig.max_frm_size) {
    ws_error (client, WS_CLOSE_TOO_LARGE, "Frame is too big");
    return ws_set_status (client, WS_ERR | WS_CLOSE, bytes);
  }

  (*frm)->buflen = 0;
  (*frm)->reading = 0;
  (*frm)->payload_offset = offset;

  return ws_set_status (client, WS_OK, bytes);
}
