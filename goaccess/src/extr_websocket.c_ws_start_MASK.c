#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_13__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/ * self_pipe; TYPE_2__* pipeout; TYPE_3__* pipein; } ;
typedef  TYPE_1__ WSServer ;
struct TYPE_18__ {int fd; } ;
typedef  TYPE_2__ WSPipeOut ;
struct TYPE_19__ {int fd; } ;
typedef  TYPE_3__ WSPipeIn ;
struct TYPE_20__ {int use_ssl; scalar_t__ sslkey; scalar_t__ sslcert; } ;
struct TYPE_16__ {int /*<<< orphan*/  rfds; int /*<<< orphan*/  wfds; } ;

/* Variables and functions */
#define  EINTR 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,int) ; 
 int errno ; 
 TYPE_13__ fdstate ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int max_file_fd ; 
 int /*<<< orphan*/  FUNC6 (TYPE_13__*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,TYPE_1__*,TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int*) ; 
 TYPE_4__ wsconfig ; 

void
FUNC13 (WSServer * server)
{
  WSPipeIn *pipein = server->pipein;
  WSPipeOut *pipeout = server->pipeout;
  int listener = 0, conn = 0;

#ifdef HAVE_LIBSSL
  if (wsconfig.sslcert && wsconfig.sslkey) {
    LOG (("==Using TLS/SSL==\n"));
    wsconfig.use_ssl = 1;
    if (initialize_ssl_ctx (server)) {
      LOG (("Unable to initialize_ssl_ctx\n"));
      return;
    }
  }
#endif

  FUNC6 (&fdstate, 0, sizeof fdstate);
  FUNC12 (&listener);

  while (1) {
    /* If the pipeout file descriptor was opened after the server socket
     * was opened, then it's possible the max file descriptor would be the
     * pipeout fd, in any case we check this here */
    max_file_fd = FUNC4 (listener, pipeout->fd);
    /* Clear out the fd sets for this iteration. */
    FUNC2 (&fdstate.rfds);
    FUNC2 (&fdstate.wfds);

    FUNC8 (listener, server, pipein, pipeout);
    max_file_fd += 1;

    /* yep, wait patiently */
    /* should it be using epoll/kqueue? will see... */
    if (FUNC7 (max_file_fd, &fdstate.rfds, &fdstate.wfds, NULL, NULL) == -1) {
      switch (errno) {
      case EINTR:
        FUNC3 (("A signal was caught on select(2)\n"));
        break;
      default:
        FUNC0 ("Unable to select: %s.", FUNC9 (errno));
      }
    }
    /* handle self-pipe trick */
    if (FUNC1 (server->self_pipe[0], &fdstate.rfds)) {
      FUNC3 (("Handled self-pipe to close event loop.\n"));
      break;
    }

    /* iterate over existing connections */
    for (conn = 0; conn < max_file_fd; ++conn) {
      if (conn != pipein->fd && conn != pipeout->fd) {
        FUNC11 (listener, conn, server);
      }
    }
    /* handle FIFOs */
    FUNC10 (server, pipein, pipeout);
  }
}