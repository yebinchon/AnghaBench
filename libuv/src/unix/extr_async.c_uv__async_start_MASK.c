#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int fd; } ;
struct TYPE_6__ {int async_wfd; TYPE_3__ async_io_watcher; } ;
typedef  TYPE_1__ uv_loop_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  POLLIN ; 
 int UV_ENOSYS ; 
 int /*<<< orphan*/  UV__F_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  uv__async_io ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(uv_loop_t* loop) {
  int pipefd[2];
  int err;

  if (loop->async_io_watcher.fd != -1)
    return 0;

  err = FUNC1();
  if (err >= 0) {
    pipefd[0] = err;
    pipefd[1] = -1;
  }
  else if (err == UV_ENOSYS) {
    err = FUNC5(pipefd, UV__F_NONBLOCK);
#if defined(__linux__)
    /* Save a file descriptor by opening one of the pipe descriptors as
     * read/write through the procfs.  That file descriptor can then
     * function as both ends of the pipe.
     */
    if (err == 0) {
      char buf[32];
      int fd;

      FUNC0(buf, sizeof(buf), "/proc/self/fd/%d", pipefd[0]);
      fd = FUNC6(buf, O_RDWR);
      if (fd >= 0) {
        FUNC2(pipefd[0]);
        FUNC2(pipefd[1]);
        pipefd[0] = fd;
        pipefd[1] = fd;
      }
    }
#endif
  }

  if (err < 0)
    return err;

  FUNC3(&loop->async_io_watcher, uv__async_io, pipefd[0]);
  FUNC4(loop, &loop->async_io_watcher, POLLIN);
  loop->async_wfd = pipefd[1];

  return 0;
}