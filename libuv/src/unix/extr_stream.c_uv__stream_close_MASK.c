#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int fd; } ;
struct TYPE_11__ {int flags; int accepted_fd; TYPE_7__ io_watcher; TYPE_3__* queued_fds; int /*<<< orphan*/  loop; TYPE_2__* select; } ;
typedef  TYPE_1__ uv_stream_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
struct TYPE_12__ {int fake_fd; int int_fd; int /*<<< orphan*/  async; int /*<<< orphan*/  async_sem; int /*<<< orphan*/  close_sem; int /*<<< orphan*/  thread; } ;
typedef  TYPE_2__ uv__stream_select_t ;
struct TYPE_13__ {unsigned int offset; int* fds; } ;
typedef  TYPE_3__ uv__stream_queued_fds_t ;

/* Variables and functions */
 int POLLIN ; 
 int POLLOUT ; 
 int STDERR_FILENO ; 
 int UV_HANDLE_READABLE ; 
 int UV_HANDLE_WRITABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  uv__stream_osx_cb_close ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(uv_stream_t* handle) {
  unsigned int i;
  uv__stream_queued_fds_t* queued_fds;

#if defined(__APPLE__)
  /* Terminate select loop first */
  if (handle->select != NULL) {
    uv__stream_select_t* s;

    s = handle->select;

    uv_sem_post(&s->close_sem);
    uv_sem_post(&s->async_sem);
    uv__stream_osx_interrupt_select(handle);
    uv_thread_join(&s->thread);
    uv_sem_destroy(&s->close_sem);
    uv_sem_destroy(&s->async_sem);
    uv__close(s->fake_fd);
    uv__close(s->int_fd);
    uv_close((uv_handle_t*) &s->async, uv__stream_osx_cb_close);

    handle->select = NULL;
  }
#endif /* defined(__APPLE__) */

  FUNC5(handle->loop, &handle->io_watcher);
  FUNC8(handle);
  FUNC3(handle);
  handle->flags &= ~(UV_HANDLE_READABLE | UV_HANDLE_WRITABLE);

  if (handle->io_watcher.fd != -1) {
    /* Don't close stdio file descriptors.  Nothing good comes from it. */
    if (handle->io_watcher.fd > STDERR_FILENO)
      FUNC1(handle->io_watcher.fd);
    handle->io_watcher.fd = -1;
  }

  if (handle->accepted_fd != -1) {
    FUNC1(handle->accepted_fd);
    handle->accepted_fd = -1;
  }

  /* Close all queued fds */
  if (handle->queued_fds != NULL) {
    queued_fds = handle->queued_fds;
    for (i = 0; i < queued_fds->offset; i++)
      FUNC1(queued_fds->fds[i]);
    FUNC2(handle->queued_fds);
    handle->queued_fds = NULL;
  }

  FUNC0(!FUNC4(&handle->io_watcher, POLLIN | POLLOUT));
}