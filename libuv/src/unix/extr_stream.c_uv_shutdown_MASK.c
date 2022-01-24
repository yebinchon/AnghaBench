#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ type; int flags; int /*<<< orphan*/  io_watcher; int /*<<< orphan*/  loop; TYPE_2__* shutdown_req; } ;
typedef  TYPE_1__ uv_stream_t ;
struct TYPE_10__ {int /*<<< orphan*/  cb; TYPE_1__* handle; } ;
typedef  TYPE_2__ uv_shutdown_t ;
typedef  int /*<<< orphan*/  uv_shutdown_cb ;

/* Variables and functions */
 int /*<<< orphan*/  POLLOUT ; 
 int UV_ENOTCONN ; 
 int UV_HANDLE_SHUT ; 
 int UV_HANDLE_SHUTTING ; 
 int UV_HANDLE_WRITABLE ; 
 scalar_t__ UV_NAMED_PIPE ; 
 int /*<<< orphan*/  UV_SHUTDOWN ; 
 scalar_t__ UV_TCP ; 
 scalar_t__ UV_TTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int FUNC6(uv_shutdown_t* req, uv_stream_t* stream, uv_shutdown_cb cb) {
  FUNC0(stream->type == UV_TCP ||
         stream->type == UV_TTY ||
         stream->type == UV_NAMED_PIPE);

  if (!(stream->flags & UV_HANDLE_WRITABLE) ||
      stream->flags & UV_HANDLE_SHUT ||
      stream->flags & UV_HANDLE_SHUTTING ||
      FUNC2(stream)) {
    return UV_ENOTCONN;
  }

  FUNC0(FUNC4(stream) >= 0);

  /* Initialize request */
  FUNC3(stream->loop, req, UV_SHUTDOWN);
  req->handle = stream;
  req->cb = cb;
  stream->shutdown_req = req;
  stream->flags |= UV_HANDLE_SHUTTING;

  FUNC1(stream->loop, &stream->io_watcher, POLLOUT);
  FUNC5(stream);

  return 0;
}