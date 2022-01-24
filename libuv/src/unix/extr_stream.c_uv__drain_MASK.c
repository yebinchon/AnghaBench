#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int flags; int /*<<< orphan*/  loop; TYPE_2__* shutdown_req; int /*<<< orphan*/  io_watcher; int /*<<< orphan*/  write_queue; } ;
typedef  TYPE_1__ uv_stream_t ;
struct TYPE_11__ {int /*<<< orphan*/  (* cb ) (TYPE_2__*,int) ;} ;
typedef  TYPE_2__ uv_shutdown_t ;

/* Variables and functions */
 int /*<<< orphan*/  POLLOUT ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SHUT_WR ; 
 int UV_HANDLE_CLOSING ; 
 int UV_HANDLE_SHUT ; 
 int UV_HANDLE_SHUTTING ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC9(uv_stream_t* stream) {
  uv_shutdown_t* req;
  int err;

  FUNC2(FUNC0(&stream->write_queue));
  FUNC5(stream->loop, &stream->io_watcher, POLLOUT);
  FUNC8(stream);

  /* Shutdown? */
  if ((stream->flags & UV_HANDLE_SHUTTING) &&
      !(stream->flags & UV_HANDLE_CLOSING) &&
      !(stream->flags & UV_HANDLE_SHUT)) {
    FUNC2(stream->shutdown_req);

    req = stream->shutdown_req;
    stream->shutdown_req = NULL;
    stream->flags &= ~UV_HANDLE_SHUTTING;
    FUNC6(stream->loop, req);

    err = 0;
    if (FUNC3(FUNC7(stream), SHUT_WR))
      err = FUNC1(errno);

    if (err == 0)
      stream->flags |= UV_HANDLE_SHUT;

    if (req->cb != NULL)
      req->cb(req, err);
  }
}