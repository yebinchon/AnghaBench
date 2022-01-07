
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; TYPE_3__* stream; } ;
struct TYPE_6__ {int flags; TYPE_1__ data; } ;
typedef TYPE_2__ uv_stdio_container_t ;
struct TYPE_7__ {int type; } ;



 int UV_EINVAL ;



 int UV_NAMED_PIPE ;
 int assert (int ) ;
 int uv__make_socketpair (int*,int ) ;
 int uv__stream_fd (TYPE_3__*) ;

__attribute__((used)) static int uv__process_init_stdio(uv_stdio_container_t* container, int fds[2]) {
  int mask;
  int fd;

  mask = 130 | 131 | 129 | 128;

  switch (container->flags & mask) {
  case 130:
    return 0;

  case 131:
    assert(container->data.stream != ((void*)0));
    if (container->data.stream->type != UV_NAMED_PIPE)
      return UV_EINVAL;
    else
      return uv__make_socketpair(fds, 0);

  case 129:
  case 128:
    if (container->flags & 129)
      fd = container->data.fd;
    else
      fd = uv__stream_fd(container->data.stream);

    if (fd == -1)
      return UV_EINVAL;

    fds[1] = fd;
    return 0;

  default:
    assert(0 && "Unexpected flags");
    return UV_EINVAL;
  }
}
