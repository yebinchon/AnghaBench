#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ type; int flags; int alloc_cb; int /*<<< orphan*/  io_watcher; int /*<<< orphan*/  loop; int /*<<< orphan*/  read_cb; } ;
typedef  TYPE_1__ uv_stream_t ;
typedef  int /*<<< orphan*/  uv_read_cb ;
typedef  int uv_alloc_cb ;

/* Variables and functions */
 int /*<<< orphan*/  POLLIN ; 
 int UV_EINVAL ; 
 int UV_ENOTCONN ; 
 int UV_HANDLE_CLOSING ; 
 int UV_HANDLE_READABLE ; 
 int UV_HANDLE_READING ; 
 scalar_t__ UV_NAMED_PIPE ; 
 scalar_t__ UV_TCP ; 
 scalar_t__ UV_TTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int FUNC5(uv_stream_t* stream,
                  uv_alloc_cb alloc_cb,
                  uv_read_cb read_cb) {
  FUNC0(stream->type == UV_TCP || stream->type == UV_NAMED_PIPE ||
      stream->type == UV_TTY);

  if (stream->flags & UV_HANDLE_CLOSING)
    return UV_EINVAL;

  if (!(stream->flags & UV_HANDLE_READABLE))
    return UV_ENOTCONN;

  /* The UV_HANDLE_READING flag is irrelevant of the state of the tcp - it just
   * expresses the desired state of the user.
   */
  stream->flags |= UV_HANDLE_READING;

  /* TODO: try to do the read inline? */
  /* TODO: keep track of tcp state. If we've gotten a EOF then we should
   * not start the IO watcher.
   */
  FUNC0(FUNC3(stream) >= 0);
  FUNC0(alloc_cb);

  stream->read_cb = read_cb;
  stream->alloc_cb = alloc_cb;

  FUNC2(stream->loop, &stream->io_watcher, POLLIN);
  FUNC1(stream);
  FUNC4(stream);

  return 0;
}