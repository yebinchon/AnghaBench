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
typedef  int /*<<< orphan*/  on ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int SOCK_CLOEXEC ; 
 int SOCK_NONBLOCK ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_NOSIGPIPE ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC2 (int,int,int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,int) ; 

int FUNC6(int domain, int type, int protocol) {
  int sockfd;
  int err;

#if defined(SOCK_NONBLOCK) && defined(SOCK_CLOEXEC)
  sockfd = socket(domain, type | SOCK_NONBLOCK | SOCK_CLOEXEC, protocol);
  if (sockfd != -1)
    return sockfd;

  if (errno != EINVAL)
    return UV__ERR(errno);
#endif

  sockfd = FUNC2(domain, type, protocol);
  if (sockfd == -1)
    return FUNC0(errno);

  err = FUNC5(sockfd, 1);
  if (err == 0)
    err = FUNC3(sockfd, 1);

  if (err) {
    FUNC4(sockfd);
    return err;
  }

#if defined(SO_NOSIGPIPE)
  {
    int on = 1;
    setsockopt(sockfd, SOL_SOCKET, SO_NOSIGPIPE, &on, sizeof(on));
  }
#endif

  return sockfd;
}