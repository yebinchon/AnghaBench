
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ colist; int * pipeout; int * pipein; } ;
typedef TYPE_1__ WSServer ;
typedef int WSPipeOut ;
typedef int WSPipeIn ;
struct TYPE_7__ {scalar_t__ accesslog; } ;


 int access_log_close () ;
 int free (TYPE_1__*) ;
 scalar_t__ list_count (scalar_t__) ;
 int list_foreach (scalar_t__,int ,int *) ;
 int list_remove_nodes (scalar_t__) ;
 int ws_clear_pipein (int *) ;
 int ws_clear_pipeout (int *) ;
 int ws_remove_dangling_clients ;
 int ws_ssl_cleanup (TYPE_1__*) ;
 TYPE_2__ wsconfig ;

void
ws_stop (WSServer * server)
{
  WSPipeIn **pipein = &server->pipein;
  WSPipeOut **pipeout = &server->pipeout;

  ws_clear_pipein (*pipein);
  ws_clear_pipeout (*pipeout);


  if (wsconfig.accesslog)
    access_log_close ();


  if (list_count (server->colist) > 0)
    list_foreach (server->colist, ws_remove_dangling_clients, ((void*)0));

  if (server->colist)
    list_remove_nodes (server->colist);





  free (server);
}
