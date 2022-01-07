
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WSServer ;
struct TYPE_7__ {TYPE_1__* frame; } ;
typedef TYPE_2__ WSClient ;
struct TYPE_6__ {scalar_t__ reading; } ;


 int ws_get_frm_header (TYPE_2__*) ;
 int ws_get_frm_payload (TYPE_2__*,int *) ;

__attribute__((used)) static int
ws_get_message (WSClient * client, WSServer * server)
{
  int bytes = 0;
  if ((client->frame == ((void*)0)) || (client->frame->reading))
    if ((bytes = ws_get_frm_header (client)) < 1 || client->frame->reading)
      return bytes;
  return ws_get_frm_payload (client, server);
}
