#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rpc_server {double timeout; int packet_num; int inbound_packet_num; char* error; int errnum; void* status; int /*<<< orphan*/  generation; int /*<<< orphan*/  sfd; int /*<<< orphan*/  port; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  active_net_connections ; 
 int errno ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  global_generation ; 
 double precise_now ; 
 scalar_t__ FUNC1 (struct rpc_server*,double) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_server*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_server*) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_server*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double) ; 
 void* rpc_status_connected ; 
 void* rpc_status_failed ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8 (struct rpc_server *server, char **error_string, int *errnum) { /* {{{ */

  /* close open stream */
  if (server->sfd >= 0) {
    FUNC3 (server);
  }

  FUNC7 ();
  double t = precise_now + server->timeout;
  server->sfd = FUNC5 (server->host, server->port, t);
  if (server->sfd < 0) {
    FUNC4 (server, errno ? FUNC6 (errno) : "Connect timed out", errno);
    FUNC2 (server);
    if (error_string) {
      *error_string = FUNC0 (errno ? FUNC6 (errno) : "Connect timed out");
    }
    if (errnum) {
      *errnum = errno;
    }
    server->status = rpc_status_failed;
    return -1;
  }

  server->status = rpc_status_connected;
  active_net_connections ++;
  server->generation = global_generation;
  server->packet_num = -2;
  server->inbound_packet_num = -2;
  if (FUNC1 (server, t) < 0) {
    FUNC4 (server, "Rpc handshake failed", 0);
    if (error_string) {
      *error_string = FUNC0 (server->error);
    }
    if (errnum) {
      *errnum = server->errnum;
    }
    server->status = rpc_status_failed;
    return -1;
  } else {
    return 1;
  }
}