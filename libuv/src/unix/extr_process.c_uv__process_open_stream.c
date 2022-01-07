
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stream; } ;
struct TYPE_5__ {int flags; TYPE_1__ data; } ;
typedef TYPE_2__ uv_stdio_container_t ;


 int UV_CREATE_PIPE ;
 int UV_HANDLE_READABLE ;
 int UV_HANDLE_WRITABLE ;
 int UV_READABLE_PIPE ;
 int UV_WRITABLE_PIPE ;
 int abort () ;
 int uv__close (int) ;
 int uv__nonblock (int,int) ;
 int uv__stream_open (int ,int,int) ;

__attribute__((used)) static int uv__process_open_stream(uv_stdio_container_t* container,
                                   int pipefds[2]) {
  int flags;
  int err;

  if (!(container->flags & UV_CREATE_PIPE) || pipefds[0] < 0)
    return 0;

  err = uv__close(pipefds[1]);
  if (err != 0)
    abort();

  pipefds[1] = -1;
  uv__nonblock(pipefds[0], 1);

  flags = 0;
  if (container->flags & UV_WRITABLE_PIPE)
    flags |= UV_HANDLE_READABLE;
  if (container->flags & UV_READABLE_PIPE)
    flags |= UV_HANDLE_WRITABLE;

  return uv__stream_open(container->data.stream, pipefds[0], flags);
}
