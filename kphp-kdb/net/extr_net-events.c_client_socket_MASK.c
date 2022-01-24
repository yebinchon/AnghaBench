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
typedef  int /*<<< orphan*/  in_addr_t ;
typedef  int /*<<< orphan*/  flags ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ EINPROGRESS ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  IP_RECVERR ; 
 int SM_IPV6 ; 
 int SM_UDP ; 
 int /*<<< orphan*/  SOL_IP ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_KEEPALIVE ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,struct sockaddr*,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ tcp_maximize_buffers ; 

int FUNC9 (in_addr_t in_addr, int port, int mode) {
  int sfd;
  struct sockaddr_in addr;
  int flags = 1;

  if (mode & SM_IPV6) {
    return -1;
  }

  if ((sfd = FUNC6 (mode, 1)) == -1) {
    return -1;
  }

  if (mode & SM_UDP) {
    FUNC4 (sfd, 0);
    FUNC3 (sfd, 0);
    FUNC8 (sfd, SOL_IP, IP_RECVERR, &flags, sizeof (flags));
  } else {
    FUNC8 (sfd, SOL_SOCKET, SO_REUSEADDR, &flags, sizeof (flags));
    if (tcp_maximize_buffers) {
      FUNC4 (sfd, 0);
      FUNC3 (sfd, 0);
    }
    FUNC8 (sfd, SOL_SOCKET, SO_KEEPALIVE, &flags, sizeof (flags));
    FUNC8 (sfd, IPPROTO_TCP, TCP_NODELAY, &flags, sizeof (flags));
  }

  FUNC5 (&addr, 0, sizeof (addr));

  addr.sin_family = AF_INET;
  addr.sin_port = FUNC2 (port);
  addr.sin_addr.s_addr = in_addr;
 
  if (FUNC1 (sfd, (struct sockaddr *) &addr, sizeof (addr)) == -1 && errno != EINPROGRESS) {
    FUNC7 ("connect()");
    FUNC0 (sfd);
    return -1;
  }

  return sfd;

}