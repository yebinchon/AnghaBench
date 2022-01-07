
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* read_cb ) (TYPE_1__*,int ,int const*) ;int io_watcher; int loop; int flags; } ;
typedef TYPE_1__ uv_stream_t ;
typedef int uv_buf_t ;


 int POLLIN ;
 int POLLOUT ;
 int UV_EOF ;
 int UV_HANDLE_READING ;
 int UV_HANDLE_READ_EOF ;
 int stub1 (TYPE_1__*,int ,int const*) ;
 int uv__handle_stop (TYPE_1__*) ;
 int uv__io_active (int *,int ) ;
 int uv__io_stop (int ,int *,int ) ;
 int uv__stream_osx_interrupt_select (TYPE_1__*) ;

__attribute__((used)) static void uv__stream_eof(uv_stream_t* stream, const uv_buf_t* buf) {
  stream->flags |= UV_HANDLE_READ_EOF;
  stream->flags &= ~UV_HANDLE_READING;
  uv__io_stop(stream->loop, &stream->io_watcher, POLLIN);
  if (!uv__io_active(&stream->io_watcher, POLLOUT))
    uv__handle_stop(stream);
  uv__stream_osx_interrupt_select(stream);
  stream->read_cb(stream, UV_EOF, buf);
}
