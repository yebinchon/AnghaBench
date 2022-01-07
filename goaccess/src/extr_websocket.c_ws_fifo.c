
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pipeout; int pipein; } ;
typedef TYPE_1__ WSServer ;
struct TYPE_5__ {scalar_t__ pipeout; scalar_t__ pipein; } ;


 scalar_t__ WS_PIPEIN ;
 scalar_t__ WS_PIPEOUT ;
 int ws_openfifo_in (int ) ;
 int ws_openfifo_out (int ) ;
 TYPE_2__ wsconfig ;

__attribute__((used)) static void
ws_fifo (WSServer * server)
{
  wsconfig.pipein = wsconfig.pipein ? wsconfig.pipein : WS_PIPEIN;
  wsconfig.pipeout = wsconfig.pipeout ? wsconfig.pipeout : WS_PIPEOUT;

  ws_openfifo_in (server->pipein);
  ws_openfifo_out (server->pipeout);
}
