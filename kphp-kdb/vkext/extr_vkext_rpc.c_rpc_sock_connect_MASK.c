#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct pollfd {int fd; int /*<<< orphan*/  events; } ;
typedef  int /*<<< orphan*/  flags ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int (*) (unsigned int,int,double)) ; 
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ EINPROGRESS ; 
 int /*<<< orphan*/  FUNC1 (int (*) (unsigned int,int,double)) ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  POLLOUT ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_KEEPALIVE ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int /*<<< orphan*/  FUNC2 (int (*) (unsigned int,int,double)) ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,struct sockaddr*,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (double) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12 (unsigned host, int port, double timeout) { /* {{{ */
  FUNC0 (rpc_sock_connect);
  FUNC2 (rpc_sock_connect);
  int sfd;
  if ((sfd = FUNC11 (AF_INET, SOCK_STREAM, 0)) == -1) {
    FUNC1 (rpc_sock_connect);
    return -1;
  }
  int flags = 1;
  FUNC10 (sfd, SOL_SOCKET, SO_REUSEADDR, &flags, sizeof (flags));
  FUNC10 (sfd, SOL_SOCKET, SO_KEEPALIVE, &flags, sizeof (flags));
  FUNC10 (sfd, IPPROTO_TCP, TCP_NODELAY, &flags, sizeof (flags));
  struct sockaddr_in addr;
  
  addr.sin_family = AF_INET;
  addr.sin_port = FUNC8(port);
  addr.sin_addr.s_addr = FUNC7 (host);

  FUNC5 (sfd, F_SETFL, O_NONBLOCK);
  if (FUNC4 (sfd, (struct sockaddr *) &addr, sizeof (addr)) == -1) {
    if (errno != EINPROGRESS) {
      FUNC1 (rpc_sock_connect);
      FUNC3 (sfd);
      return -1;
    }
  }

  struct pollfd s;
  s.fd = sfd;
  s.events = POLLOUT;

  int t = FUNC6 (timeout);

  if (FUNC9 (&s, 1, t) <= 0) {
    FUNC3 (sfd);
    FUNC1 (rpc_sock_connect);
    return -1;
  }

  
  FUNC1 (rpc_sock_connect);
  return sfd;
}