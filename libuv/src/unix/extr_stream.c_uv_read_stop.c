
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int * alloc_cb; int * read_cb; int io_watcher; int loop; } ;
typedef TYPE_1__ uv_stream_t ;


 int POLLIN ;
 int POLLOUT ;
 int UV_HANDLE_READING ;
 int uv__handle_stop (TYPE_1__*) ;
 int uv__io_active (int *,int ) ;
 int uv__io_stop (int ,int *,int ) ;
 int uv__stream_osx_interrupt_select (TYPE_1__*) ;

int uv_read_stop(uv_stream_t* stream) {
  if (!(stream->flags & UV_HANDLE_READING))
    return 0;

  stream->flags &= ~UV_HANDLE_READING;
  uv__io_stop(stream->loop, &stream->io_watcher, POLLIN);
  if (!uv__io_active(&stream->io_watcher, POLLOUT))
    uv__handle_stop(stream);
  uv__stream_osx_interrupt_select(stream);

  stream->read_cb = ((void*)0);
  stream->alloc_cb = ((void*)0);
  return 0;
}
