#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int accepted_fd; int /*<<< orphan*/  io_watcher; int /*<<< orphan*/ * select; scalar_t__ write_queue_size; int /*<<< orphan*/  write_completed_queue; int /*<<< orphan*/  write_queue; scalar_t__ delayed_error; int /*<<< orphan*/ * queued_fds; int /*<<< orphan*/ * shutdown_req; int /*<<< orphan*/ * connect_req; int /*<<< orphan*/ * connection_cb; int /*<<< orphan*/ * close_cb; int /*<<< orphan*/ * alloc_cb; int /*<<< orphan*/ * read_cb; } ;
typedef  TYPE_1__ uv_stream_t ;
struct TYPE_7__ {int emfile_fd; } ;
typedef  TYPE_2__ uv_loop_t ;
typedef  int /*<<< orphan*/  uv_handle_type ;
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uv__stream_io ; 

void FUNC4(uv_loop_t* loop,
                     uv_stream_t* stream,
                     uv_handle_type type) {
  int err;

  FUNC1(loop, (uv_handle_t*)stream, type);
  stream->read_cb = NULL;
  stream->alloc_cb = NULL;
  stream->close_cb = NULL;
  stream->connection_cb = NULL;
  stream->connect_req = NULL;
  stream->shutdown_req = NULL;
  stream->accepted_fd = -1;
  stream->queued_fds = NULL;
  stream->delayed_error = 0;
  FUNC0(&stream->write_queue);
  FUNC0(&stream->write_completed_queue);
  stream->write_queue_size = 0;

  if (loop->emfile_fd == -1) {
    err = FUNC3("/dev/null", O_RDONLY);
    if (err < 0)
        /* In the rare case that "/dev/null" isn't mounted open "/"
         * instead.
         */
        err = FUNC3("/", O_RDONLY);
    if (err >= 0)
      loop->emfile_fd = err;
  }

#if defined(__APPLE__)
  stream->select = NULL;
#endif /* defined(__APPLE_) */

  FUNC2(&stream->io_watcher, uv__stream_io, -1);
}