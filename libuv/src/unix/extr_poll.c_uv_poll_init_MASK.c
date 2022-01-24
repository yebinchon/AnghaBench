#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * poll_cb; int /*<<< orphan*/  io_watcher; } ;
typedef  TYPE_1__ uv_poll_t ;
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int UV_EEXIST ; 
 int UV_ENOTTY ; 
 int /*<<< orphan*/  UV_POLL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  uv__poll_io ; 

int FUNC7(uv_loop_t* loop, uv_poll_t* handle, int fd) {
  int err;

  if (FUNC0(loop, fd))
    return UV_EEXIST;

  err = FUNC2(loop, fd);
  if (err)
    return err;

  /* If ioctl(FIONBIO) reports ENOTTY, try fcntl(F_GETFL) + fcntl(F_SETFL).
   * Workaround for e.g. kqueue fds not supporting ioctls.
   */
  err = FUNC4(fd, 1);
  if (err == UV_ENOTTY)
    if (uv__nonblock == uv__nonblock_ioctl)
      err = FUNC5(fd, 1);

  if (err)
    return err;

  FUNC1(loop, (uv_handle_t*) handle, UV_POLL);
  FUNC3(&handle->io_watcher, uv__poll_io, fd);
  handle->poll_cb = NULL;
  return 0;
}