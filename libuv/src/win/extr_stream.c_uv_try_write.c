
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_tty_t ;
typedef int uv_tcp_t ;
struct TYPE_3__ {int flags; int type; } ;
typedef TYPE_1__ uv_stream_t ;
typedef int uv_buf_t ;


 int UV_EAGAIN ;
 int UV_EBADF ;
 int UV_ENOSYS ;
 int UV_EPIPE ;
 int UV_HANDLE_CLOSING ;
 int UV_HANDLE_WRITABLE ;



 int assert (int ) ;
 int uv__tcp_try_write (int *,int const*,unsigned int) ;
 int uv__tty_try_write (int *,int const*,unsigned int) ;

int uv_try_write(uv_stream_t* stream,
                 const uv_buf_t bufs[],
                 unsigned int nbufs) {
  if (stream->flags & UV_HANDLE_CLOSING)
    return UV_EBADF;
  if (!(stream->flags & UV_HANDLE_WRITABLE))
    return UV_EPIPE;

  switch (stream->type) {
    case 129:
      return uv__tcp_try_write((uv_tcp_t*) stream, bufs, nbufs);
    case 128:
      return uv__tty_try_write((uv_tty_t*) stream, bufs, nbufs);
    case 130:
      return UV_EAGAIN;
    default:
      assert(0);
      return UV_ENOSYS;
  }
}
