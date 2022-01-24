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
struct timespec {int tv_sec; int tv_nsec; } ;
struct epoll_event {int dummy; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  embed_async ; 
 int /*<<< orphan*/  embed_closed ; 
 int /*<<< orphan*/  embed_sem ; 
 int FUNC0 (int,struct epoll_event*,int,int) ; 
 scalar_t__ errno ; 
 int FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(void* arg) {
  int r;
  int fd;
  int timeout;

  while (!embed_closed) {
    fd = FUNC3(FUNC5());
    timeout = FUNC4(FUNC5());

    do {
#if defined(HAVE_KQUEUE)
      struct timespec ts;
      ts.tv_sec = timeout / 1000;
      ts.tv_nsec = (timeout % 1000) * 1000000;
      r = kevent(fd, NULL, 0, NULL, 0, &ts);
#elif defined(HAVE_EPOLL)
      {
        struct epoll_event ev;
        r = epoll_wait(fd, &ev, 1, timeout);
      }
#endif
    } while (r == -1 && errno == EINTR);
    FUNC2(&embed_async);
    FUNC6(&embed_sem);
  }
}