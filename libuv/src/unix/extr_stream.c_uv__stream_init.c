
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int accepted_fd; int io_watcher; int * select; scalar_t__ write_queue_size; int write_completed_queue; int write_queue; scalar_t__ delayed_error; int * queued_fds; int * shutdown_req; int * connect_req; int * connection_cb; int * close_cb; int * alloc_cb; int * read_cb; } ;
typedef TYPE_1__ uv_stream_t ;
struct TYPE_7__ {int emfile_fd; } ;
typedef TYPE_2__ uv_loop_t ;
typedef int uv_handle_type ;
typedef int uv_handle_t ;


 int O_RDONLY ;
 int QUEUE_INIT (int *) ;
 int uv__handle_init (TYPE_2__*,int *,int ) ;
 int uv__io_init (int *,int ,int) ;
 int uv__open_cloexec (char*,int ) ;
 int uv__stream_io ;

void uv__stream_init(uv_loop_t* loop,
                     uv_stream_t* stream,
                     uv_handle_type type) {
  int err;

  uv__handle_init(loop, (uv_handle_t*)stream, type);
  stream->read_cb = ((void*)0);
  stream->alloc_cb = ((void*)0);
  stream->close_cb = ((void*)0);
  stream->connection_cb = ((void*)0);
  stream->connect_req = ((void*)0);
  stream->shutdown_req = ((void*)0);
  stream->accepted_fd = -1;
  stream->queued_fds = ((void*)0);
  stream->delayed_error = 0;
  QUEUE_INIT(&stream->write_queue);
  QUEUE_INIT(&stream->write_completed_queue);
  stream->write_queue_size = 0;

  if (loop->emfile_fd == -1) {
    err = uv__open_cloexec("/dev/null", O_RDONLY);
    if (err < 0)



        err = uv__open_cloexec("/", O_RDONLY);
    if (err >= 0)
      loop->emfile_fd = err;
  }





  uv__io_init(&stream->io_watcher, uv__stream_io, -1);
}
