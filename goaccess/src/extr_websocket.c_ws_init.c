
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int self_pipe; int pipeout; int pipein; } ;
typedef TYPE_1__ WSServer ;
struct TYPE_7__ {char const* host; char const* port; scalar_t__ use_ssl; scalar_t__ strict; int * sslkey; int * sslcert; int * pipeout; int * pipein; int * origin; int max_frm_size; int * accesslog; } ;


 int WS_MAX_FRM_SZ ;
 int memset (int ,int ,int) ;
 int new_wspipein () ;
 int new_wspipeout () ;
 TYPE_1__* new_wsserver () ;
 int ws_fifo (TYPE_1__*) ;
 TYPE_2__ wsconfig ;

WSServer *
ws_init (const char *host, const char *port, void (*initopts) (void))
{
  WSServer *server = new_wsserver ();
  server->pipein = new_wspipein ();
  server->pipeout = new_wspipeout ();
  memset (server->self_pipe, 0, sizeof (server->self_pipe));

  wsconfig.accesslog = ((void*)0);
  wsconfig.host = host;
  wsconfig.max_frm_size = WS_MAX_FRM_SZ;
  wsconfig.origin = ((void*)0);
  wsconfig.pipein = ((void*)0);
  wsconfig.pipeout = ((void*)0);
  wsconfig.sslcert = ((void*)0);
  wsconfig.sslkey = ((void*)0);
  wsconfig.port = port;
  wsconfig.strict = 0;
  wsconfig.use_ssl = 0;

  initopts ();
  ws_fifo (server);

  return server;
}
