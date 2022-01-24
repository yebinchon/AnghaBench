#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int fd; } ;
struct TYPE_5__ {int flags; scalar_t__ type; TYPE_1__ io_watcher; } ;
typedef  TYPE_2__ uv_stream_t ;
typedef  int /*<<< orphan*/  enable ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ ENOTSOCK ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_OOBINLINE ; 
 int UV_EBUSY ; 
 int UV_HANDLE_TCP_KEEPALIVE ; 
 int UV_HANDLE_TCP_NODELAY ; 
 scalar_t__ UV_TCP ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC3 (int,int,int) ; 
 scalar_t__ FUNC4 (int,int) ; 

int FUNC5(uv_stream_t* stream, int fd, int flags) {
#if defined(__APPLE__)
  int enable;
#endif

  if (!(stream->io_watcher.fd == -1 || stream->io_watcher.fd == fd))
    return UV_EBUSY;

  FUNC1(fd >= 0);
  stream->flags |= flags;

  if (stream->type == UV_TCP) {
    if ((stream->flags & UV_HANDLE_TCP_NODELAY) && FUNC4(fd, 1))
      return FUNC0(errno);

    /* TODO Use delay the user passed in. */
    if ((stream->flags & UV_HANDLE_TCP_KEEPALIVE) &&
        FUNC3(fd, 1, 60)) {
      return FUNC0(errno);
    }
  }

#if defined(__APPLE__)
  enable = 1;
  if (setsockopt(fd, SOL_SOCKET, SO_OOBINLINE, &enable, sizeof(enable)) &&
      errno != ENOTSOCK &&
      errno != EINVAL) {
    return UV__ERR(errno);
  }
#endif

  stream->io_watcher.fd = fd;

  return 0;
}