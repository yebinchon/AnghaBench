
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int colist; scalar_t__ closing; int pipeout; int (* onclose ) (int ,TYPE_2__*) ;} ;
typedef TYPE_1__ WSServer ;
struct TYPE_15__ {int status; int * ssl; int end_proc; } ;
typedef TYPE_2__ WSClient ;
struct TYPE_16__ {scalar_t__ accesslog; int echomode; scalar_t__ strict; } ;


 int LOG (char*) ;
 int SHUT_RDWR ;
 int SSL_free (int *) ;
 int WS_ERR ;
 int access_log (TYPE_2__*,int) ;
 int gettimeofday (int *,int *) ;
 int list_count (int ) ;
 int shutdown (int,int ) ;
 int shutdown_ssl (TYPE_2__*) ;
 int stub1 (int ,TYPE_2__*) ;
 int ws_clear_queue (TYPE_2__*) ;
 int ws_close (int) ;
 int ws_free_frame (TYPE_2__*) ;
 int ws_free_message (TYPE_2__*) ;
 int ws_remove_client_from_list (TYPE_2__*,TYPE_1__*) ;
 TYPE_3__ wsconfig ;

__attribute__((used)) static void
handle_tcp_close (int conn, WSClient * client, WSServer * server)
{





  shutdown (conn, SHUT_RDWR);

  if (server->onclose && wsconfig.strict && !wsconfig.echomode)
    (*server->onclose) (server->pipeout, client);


  gettimeofday (&client->end_proc, ((void*)0));
  if (wsconfig.accesslog)
    access_log (client, 200);


  if (client->status & WS_ERR) {
    ws_clear_queue (client);
    ws_free_frame (client);
    ws_free_message (client);
  }

  server->closing = 0;
  ws_close (conn);
  ws_remove_client_from_list (client, server);
  LOG (("Active: %d\n", list_count (server->colist)));
}
