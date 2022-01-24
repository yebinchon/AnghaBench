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
typedef  int /*<<< orphan*/  uv_stream_t ;
struct TYPE_3__ {int /*<<< orphan*/  loop; } ;
typedef  TYPE_1__ uv_pipe_t ;
typedef  int /*<<< orphan*/  uv_file ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  F_GETFL ; 
 int O_ACCMODE ; 
 int O_RDONLY ; 
 int O_WRONLY ; 
 int UV_EEXIST ; 
 int UV_HANDLE_READABLE ; 
 int UV_HANDLE_WRITABLE ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ errno ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC6(uv_pipe_t* handle, uv_file fd) {
  int flags;
  int mode;
  int err;
  flags = 0;

  if (FUNC2(handle->loop, fd))
    return UV_EEXIST;

  do
    mode = FUNC1(fd, F_GETFL);
  while (mode == -1 && errno == EINTR);

  if (mode == -1)
    return FUNC0(errno); /* according to docs, must be EBADF */

  err = FUNC3(fd, 1);
  if (err)
    return err;

#if defined(__APPLE__)
  err = uv__stream_try_select((uv_stream_t*) handle, &fd);
  if (err)
    return err;
#endif /* defined(__APPLE__) */

  mode &= O_ACCMODE;
  if (mode != O_WRONLY)
    flags |= UV_HANDLE_READABLE;
  if (mode != O_RDONLY)
    flags |= UV_HANDLE_WRITABLE;

  return FUNC4((uv_stream_t*)handle, fd, flags);
}