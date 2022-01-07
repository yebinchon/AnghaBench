
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int self_pipe; int onopen; } ;
struct TYPE_4__ {TYPE_2__* server; } ;
typedef TYPE_1__ GWSWriter ;


 int fprintf (int ,char*) ;
 int onopen ;
 int set_self_pipe (int ) ;
 int stderr ;
 int ws_start (TYPE_2__*) ;
 int ws_stop (TYPE_2__*) ;

__attribute__((used)) static void
start_server (void *ptr_data)
{
  GWSWriter *writer = (GWSWriter *) ptr_data;

  writer->server->onopen = onopen;
  set_self_pipe (writer->server->self_pipe);


  ws_start (writer->server);
  fprintf (stderr, "Stopping WebSocket server...\n");
  ws_stop (writer->server);
}
