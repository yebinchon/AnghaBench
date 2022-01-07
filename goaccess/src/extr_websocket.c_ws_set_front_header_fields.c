
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* buf; int res; int masking; int opcode; int fin; } ;
typedef TYPE_1__ WSFrame ;
struct TYPE_6__ {TYPE_1__* frame; } ;
typedef TYPE_2__ WSClient ;


 int WS_CLOSE ;
 int WS_ERR ;
 int WS_FRM_FIN (char) ;
 int WS_FRM_MASK (char) ;
 int WS_FRM_OPCODE (char) ;
 scalar_t__ WS_FRM_R1 (char) ;
 scalar_t__ WS_FRM_R2 (char) ;
 scalar_t__ WS_FRM_R3 (char) ;
 int ws_set_status (TYPE_2__*,int,int) ;

__attribute__((used)) static int
ws_set_front_header_fields (WSClient * client)
{
  WSFrame **frm = &client->frame;
  char *buf = (*frm)->buf;

  (*frm)->fin = WS_FRM_FIN (*(buf));
  (*frm)->masking = WS_FRM_MASK (*(buf + 1));
  (*frm)->opcode = WS_FRM_OPCODE (*(buf));
  (*frm)->res = WS_FRM_R1 (*(buf)) || WS_FRM_R2 (*(buf)) || WS_FRM_R3 (*(buf));


  if (!(*frm)->masking || (*frm)->res)
    return ws_set_status (client, WS_ERR | WS_CLOSE, 1);

  return 0;
}
