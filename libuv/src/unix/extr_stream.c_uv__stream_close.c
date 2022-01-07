
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int fd; } ;
struct TYPE_11__ {int flags; int accepted_fd; TYPE_7__ io_watcher; TYPE_3__* queued_fds; int loop; TYPE_2__* select; } ;
typedef TYPE_1__ uv_stream_t ;
typedef int uv_handle_t ;
struct TYPE_12__ {int fake_fd; int int_fd; int async; int async_sem; int close_sem; int thread; } ;
typedef TYPE_2__ uv__stream_select_t ;
struct TYPE_13__ {unsigned int offset; int* fds; } ;
typedef TYPE_3__ uv__stream_queued_fds_t ;


 int POLLIN ;
 int POLLOUT ;
 int STDERR_FILENO ;
 int UV_HANDLE_READABLE ;
 int UV_HANDLE_WRITABLE ;
 int assert (int) ;
 int uv__close (int) ;
 int uv__free (TYPE_3__*) ;
 int uv__handle_stop (TYPE_1__*) ;
 int uv__io_active (TYPE_7__*,int) ;
 int uv__io_close (int ,TYPE_7__*) ;
 int uv__stream_osx_cb_close ;
 int uv__stream_osx_interrupt_select (TYPE_1__*) ;
 int uv_close (int *,int ) ;
 int uv_read_stop (TYPE_1__*) ;
 int uv_sem_destroy (int *) ;
 int uv_sem_post (int *) ;
 int uv_thread_join (int *) ;

void uv__stream_close(uv_stream_t* handle) {
  unsigned int i;
  uv__stream_queued_fds_t* queued_fds;
  uv__io_close(handle->loop, &handle->io_watcher);
  uv_read_stop(handle);
  uv__handle_stop(handle);
  handle->flags &= ~(UV_HANDLE_READABLE | UV_HANDLE_WRITABLE);

  if (handle->io_watcher.fd != -1) {

    if (handle->io_watcher.fd > STDERR_FILENO)
      uv__close(handle->io_watcher.fd);
    handle->io_watcher.fd = -1;
  }

  if (handle->accepted_fd != -1) {
    uv__close(handle->accepted_fd);
    handle->accepted_fd = -1;
  }


  if (handle->queued_fds != ((void*)0)) {
    queued_fds = handle->queued_fds;
    for (i = 0; i < queued_fds->offset; i++)
      uv__close(queued_fds->fds[i]);
    uv__free(handle->queued_fds);
    handle->queued_fds = ((void*)0);
  }

  assert(!uv__io_active(&handle->io_watcher, POLLIN | POLLOUT));
}
