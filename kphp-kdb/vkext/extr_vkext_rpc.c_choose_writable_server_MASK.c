#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct rpc_server_collection {int num; struct rpc_server** servers; } ;
struct rpc_server {scalar_t__ status; int /*<<< orphan*/  sfd; } ;
struct TYPE_6__ {int events; int revents; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int (*) (TYPE_1__*,int,int)) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (TYPE_1__*,int,int)) ; 
 int POLLERR ; 
 int POLLHUP ; 
 int POLLNVAL ; 
 int POLLOUT ; 
 int POLLRDHUP ; 
 int /*<<< orphan*/  FUNC2 (int (*) (TYPE_1__*,int,int)) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (double) ; 
 int FUNC4 () ; 
 int FUNC5 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_server*) ; 
 scalar_t__ rpc_status_connected ; 
 scalar_t__ FUNC8 (struct rpc_server*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* server_fds ; 
 size_t* server_fds_tmp ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct rpc_server *FUNC10 (struct rpc_server_collection *servers, double timeout) { /* {{{ */
  int i;
  int t = 0;   
  int first = 1;
  while (t || first) {
    int cc = 0;
    for (i = 0; i < servers->num; i++) if (servers->servers[i] && servers->servers[i]->status == rpc_status_connected) {
      server_fds[cc].fd = servers->servers[i]->sfd;
      server_fds[cc].events = POLLOUT | POLLERR | POLLHUP | POLLNVAL | POLLRDHUP;
      server_fds_tmp[cc] = i;
      cc ++;
    }
    if (!cc) { return 0; }
    t = FUNC3 (timeout);
    first = 0;

    FUNC0 (poll);
    FUNC2 (poll);
    int r = FUNC5 (server_fds, cc, t);
    FUNC1 (poll);
    if (r < 0) {
      FUNC6 (FUNC9 (errno), errno);
      return 0;
    }
    if (r == 0) {
      return 0;
    }

    int k = 0;
    struct rpc_server *result = 0;
    for (i = 0; i < cc; i++) {
      if (server_fds[i].revents & (POLLERR | POLLHUP | POLLNVAL | POLLRDHUP)) {
        if (server_fds[i].revents & POLLRDHUP) {
          while (FUNC8 (servers->servers[server_fds_tmp[i]], 0, 0) > 0); 
        }
        FUNC7 (servers->servers[server_fds_tmp[i]]);
      } else if (server_fds[i].revents & POLLOUT) {
        if (!(FUNC4 () % (k + 1))) {
          result = servers->servers[server_fds_tmp[i]];
        }
        k ++;
      }
    }
    if (result) { return result; }
  }
  return 0;
}