#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int* self_pipe; int /*<<< orphan*/  closing; int /*<<< orphan*/  colist; } ;
typedef  TYPE_1__ WSServer ;
struct TYPE_11__ {int fd; int status; } ;
typedef  TYPE_2__ WSPipeOut ;
struct TYPE_12__ {int fd; } ;
typedef  TYPE_3__ WSPipeIn ;
struct TYPE_13__ {int status; } ;
typedef  TYPE_4__ WSClient ;
struct TYPE_14__ {int /*<<< orphan*/  wfds; int /*<<< orphan*/  rfds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FD_SETSIZE ; 
 int WS_SENDING ; 
 TYPE_9__ fdstate ; 
 int max_file_fd ; 
 TYPE_4__* FUNC1 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2 (int listener, WSServer * server, WSPipeIn * pi, WSPipeOut * po)
{
  WSClient *client = NULL;
  int conn;

  /* pipe out */
  if (po->fd != -1) {
    if (po->status & WS_SENDING)
      FUNC0 (po->fd, &fdstate.wfds);
  }
  /* pipe in */
  if (pi->fd != -1)
    FUNC0 (pi->fd, &fdstate.rfds);

  /* self-pipe trick to stop the event loop */
  FUNC0 (server->self_pipe[0], &fdstate.rfds);
  /* server socket, ready for accept() */
  FUNC0 (listener, &fdstate.rfds);

  for (conn = 0; conn < FD_SETSIZE; ++conn) {
    if (conn == pi->fd || conn == po->fd)
      continue;
    if (!(client = FUNC1 (conn, &server->colist)))
      continue;

    /* As long as we are not closing a connection, we assume we always
     * check a client for reading */
    if (!server->closing) {
      FUNC0 (conn, &fdstate.rfds);
      if (conn > max_file_fd)
        max_file_fd = conn;
    }
    /* Only if we have data to send the client */
    if (client->status & WS_SENDING) {
      FUNC0 (conn, &fdstate.wfds);
      if (conn > max_file_fd)
        max_file_fd = conn;
    }
  }
}