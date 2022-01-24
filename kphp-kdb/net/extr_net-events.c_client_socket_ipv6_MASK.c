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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  flags ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 scalar_t__ EINPROGRESS ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int SM_IPV6 ; 
 int SM_UDP ; 
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
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_in6*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ tcp_maximize_buffers ; 

int FUNC10 (const unsigned char in6_addr_ptr[16], int port, int mode) {
  int sfd;
  struct sockaddr_in6 addr;
  int flags = 1;

  if (!(mode & SM_IPV6)) {
    return -1;
  }

  if ((sfd = FUNC7 (mode, 1)) == -1) {
    return -1;
  }

  if (mode & SM_UDP) {
    FUNC4 (sfd, 0);
    FUNC3 (sfd, 0);
  } else {
    FUNC9 (sfd, SOL_SOCKET, SO_REUSEADDR, &flags, sizeof (flags));
    if (tcp_maximize_buffers) {
      FUNC4 (sfd, 0);
      FUNC3 (sfd, 0);
    }
    FUNC9 (sfd, SOL_SOCKET, SO_KEEPALIVE, &flags, sizeof (flags));
    FUNC9 (sfd, IPPROTO_TCP, TCP_NODELAY, &flags, sizeof (flags));
  }

  FUNC6 (&addr, 0, sizeof (addr));

  addr.sin6_family = AF_INET6;
  addr.sin6_port = FUNC2 (port);
  FUNC5 (&addr.sin6_addr, in6_addr_ptr, 16);
 
  if (FUNC1 (sfd, (struct sockaddr *) &addr, sizeof (addr)) == -1 && errno != EINPROGRESS) {
    FUNC8 ("connect()");
    FUNC0 (sfd);
    return -1;
  }

  return sfd;

}