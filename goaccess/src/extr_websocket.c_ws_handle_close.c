
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; } ;
typedef TYPE_1__ WSClient ;


 int WS_CLOSE ;
 int WS_ERR ;
 int WS_OPCODE_CLOSE ;
 int ws_send_frame (TYPE_1__*,int ,int *,int ) ;

__attribute__((used)) static int
ws_handle_close (WSClient * client)
{
  client->status = WS_ERR | WS_CLOSE;
  return ws_send_frame (client, WS_OPCODE_CLOSE, ((void*)0), 0);
}
