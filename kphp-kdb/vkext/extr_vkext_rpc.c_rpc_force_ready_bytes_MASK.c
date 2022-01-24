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
struct rpc_server {int in_bytes; int sfd; } ;
struct pollfd {int fd; int events; int revents; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int POLLERR ; 
 int POLLHUP ; 
 int POLLIN ; 
 int POLLNVAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  force_read ; 
 int FUNC4 (double) ; 
 int FUNC5 (struct rpc_server*,int) ; 
 scalar_t__ FUNC6 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_server*,char*,scalar_t__) ; 
 char* FUNC8 (scalar_t__) ; 

__attribute__((used)) static int FUNC9 (struct rpc_server *server, int n, double timeout) { /* {{{ */
  int __n = n;
  if (n <= server->in_bytes) { return server->in_bytes; }
  FUNC0(force_read);
  FUNC2 (force_read);
  n -= server->in_bytes;


  int sfd = server->sfd;
  FUNC3 (sfd >= 0);
  
  struct pollfd s;
  s.fd = sfd;
  s.events = POLLIN | POLLERR | POLLNVAL | POLLHUP;
  int t = 0; //get_ms_timeout (timeout);
  int first = 1;
  do {
    errno = 0;
    if (FUNC6 (&s, 1, t) <= 0) {
      if (first) {
        first = 0;
        continue;
      }
      FUNC7 (server, errno ? FUNC8 (errno) : "Timeout", errno);
      FUNC1 (force_read);
      return __n - n;
    }
    first = 0;
    int t = FUNC5 (server, n);    
    if (t < 0) {
      return -1;
    }
    n -= t;
    if (n <= 0) { FUNC1 (force_read); return __n - n;}
    if (s.revents & (POLLERR | POLLNVAL | POLLHUP)) {
      return -1;
    }
  } while ((t = FUNC4 (timeout)));
  FUNC1 (force_read);
  return __n - n;
}