
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_13__ ;


struct TYPE_17__ {int * self_pipe; TYPE_2__* pipeout; TYPE_3__* pipein; } ;
typedef TYPE_1__ WSServer ;
struct TYPE_18__ {int fd; } ;
typedef TYPE_2__ WSPipeOut ;
struct TYPE_19__ {int fd; } ;
typedef TYPE_3__ WSPipeIn ;
struct TYPE_20__ {int use_ssl; scalar_t__ sslkey; scalar_t__ sslcert; } ;
struct TYPE_16__ {int rfds; int wfds; } ;



 int FATAL (char*,int ) ;
 scalar_t__ FD_ISSET (int ,int *) ;
 int FD_ZERO (int *) ;
 int LOG (char*) ;
 int MAX (int,int) ;
 int errno ;
 TYPE_13__ fdstate ;
 scalar_t__ initialize_ssl_ctx (TYPE_1__*) ;
 int max_file_fd ;
 int memset (TYPE_13__*,int ,int) ;
 int select (int,int *,int *,int *,int *) ;
 int set_rfds_wfds (int,TYPE_1__*,TYPE_3__*,TYPE_2__*) ;
 int strerror (int) ;
 int ws_fifos (TYPE_1__*,TYPE_3__*,TYPE_2__*) ;
 int ws_listen (int,int,TYPE_1__*) ;
 int ws_socket (int*) ;
 TYPE_4__ wsconfig ;

void
ws_start (WSServer * server)
{
  WSPipeIn *pipein = server->pipein;
  WSPipeOut *pipeout = server->pipeout;
  int listener = 0, conn = 0;
  memset (&fdstate, 0, sizeof fdstate);
  ws_socket (&listener);

  while (1) {



    max_file_fd = MAX (listener, pipeout->fd);

    FD_ZERO (&fdstate.rfds);
    FD_ZERO (&fdstate.wfds);

    set_rfds_wfds (listener, server, pipein, pipeout);
    max_file_fd += 1;



    if (select (max_file_fd, &fdstate.rfds, &fdstate.wfds, ((void*)0), ((void*)0)) == -1) {
      switch (errno) {
      case 128:
        LOG (("A signal was caught on select(2)\n"));
        break;
      default:
        FATAL ("Unable to select: %s.", strerror (errno));
      }
    }

    if (FD_ISSET (server->self_pipe[0], &fdstate.rfds)) {
      LOG (("Handled self-pipe to close event loop.\n"));
      break;
    }


    for (conn = 0; conn < max_file_fd; ++conn) {
      if (conn != pipein->fd && conn != pipeout->fd) {
        ws_listen (listener, conn, server);
      }
    }

    ws_fifos (server, pipein, pipeout);
  }
}
