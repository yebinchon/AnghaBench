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

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ ENOSYS ; 
 int FUNC0 (scalar_t__) ; 
 int UV__SOCK_CLOEXEC ; 
 int UV__SOCK_NONBLOCK ; 
 int FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ errno ; 
 int FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int,int) ; 

int FUNC7(int sockfd) {
  int peerfd;
  int err;

  FUNC2(sockfd >= 0);

  while (1) {
#if defined(__linux__)                          || \
    (defined(__FreeBSD__) && __FreeBSD__ >= 10) || \
    defined(__NetBSD__)
    static int no_accept4;

    if (no_accept4)
      goto skip;

    peerfd = FUNC3(sockfd,
                         NULL,
                         NULL,
                         UV__SOCK_NONBLOCK|UV__SOCK_CLOEXEC);
    if (peerfd != -1)
      return peerfd;

    if (errno == EINTR)
      continue;

    if (errno != ENOSYS)
      return FUNC0(errno);

    no_accept4 = 1;
skip:
#endif

    peerfd = FUNC1(sockfd, NULL, NULL);
    if (peerfd == -1) {
      if (errno == EINTR)
        continue;
      return FUNC0(errno);
    }

    err = FUNC4(peerfd, 1);
    if (err == 0)
      err = FUNC6(peerfd, 1);

    if (err) {
      FUNC5(peerfd);
      return err;
    }

    return peerfd;
  }
}