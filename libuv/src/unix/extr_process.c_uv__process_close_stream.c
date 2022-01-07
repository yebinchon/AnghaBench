
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
 int uv__stream_close (int ) ;

__attribute__((used)) static void uv__process_close_stream(uv_stdio_container_t* container) {
  if (!(container->flags & UV_CREATE_PIPE)) return;
  uv__stream_close(container->data.stream);
}
