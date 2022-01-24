#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_stream_t ;
struct TYPE_11__ {int fd; } ;
struct TYPE_9__ {int delayed_error; TYPE_7__ io_watcher; int /*<<< orphan*/  loop; TYPE_2__* connect_req; } ;
typedef  TYPE_1__ uv_pipe_t ;
struct TYPE_10__ {int /*<<< orphan*/  queue; int /*<<< orphan*/  cb; int /*<<< orphan*/ * handle; } ;
typedef  TYPE_2__ uv_connect_t ;
typedef  int /*<<< orphan*/  uv_connect_cb ;
struct sockaddr_un {int /*<<< orphan*/  sun_family; int /*<<< orphan*/  sun_path; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 scalar_t__ EINPROGRESS ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  POLLOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  UV_CONNECT ; 
 int UV_EBADF ; 
 int UV_ENOTSOCK ; 
 int UV_HANDLE_READABLE ; 
 int UV_HANDLE_WRITABLE ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int,struct sockaddr*,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,int) ; 

void FUNC11(uv_connect_t* req,
                    uv_pipe_t* handle,
                    const char* name,
                    uv_connect_cb cb) {
  struct sockaddr_un saddr;
  int new_sock;
  int err;
  int r;

  new_sock = (FUNC8(handle) == -1);

  if (new_sock) {
    err = FUNC7(AF_UNIX, SOCK_STREAM, 0);
    if (err < 0)
      goto out;
    handle->io_watcher.fd = err;
  }

  FUNC3(&saddr, 0, sizeof saddr);
  FUNC10(saddr.sun_path, name, sizeof(saddr.sun_path));
  saddr.sun_family = AF_UNIX;

  do {
    r = FUNC2(FUNC8(handle),
                (struct sockaddr*)&saddr, sizeof saddr);
  }
  while (r == -1 && errno == EINTR);

  if (r == -1 && errno != EINPROGRESS) {
    err = FUNC1(errno);
#if defined(__CYGWIN__) || defined(__MSYS__)
    /* EBADF is supposed to mean that the socket fd is bad, but
       Cygwin reports EBADF instead of ENOTSOCK when the file is
       not a socket.  We do not expect to see a bad fd here
       (e.g. due to new_sock), so translate the error.  */
    if (err == UV_EBADF)
      err = UV_ENOTSOCK;
#endif
    goto out;
  }

  err = 0;
  if (new_sock) {
    err = FUNC9((uv_stream_t*)handle,
                          FUNC8(handle),
                          UV_HANDLE_READABLE | UV_HANDLE_WRITABLE);
  }

  if (err == 0)
    FUNC5(handle->loop, &handle->io_watcher, POLLOUT);

out:
  handle->delayed_error = err;
  handle->connect_req = req;

  FUNC6(handle->loop, req, UV_CONNECT);
  req->handle = (uv_stream_t*)handle;
  req->cb = cb;
  FUNC0(&req->queue);

  /* Force callback to run on next tick in case of error. */
  if (err)
    FUNC4(handle->loop, &handle->io_watcher);

}