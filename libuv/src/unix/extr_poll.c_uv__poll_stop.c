
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int fd; } ;
struct TYPE_5__ {TYPE_3__ io_watcher; int loop; } ;
typedef TYPE_1__ uv_poll_t ;


 int POLLIN ;
 int POLLOUT ;
 int UV__POLLPRI ;
 int UV__POLLRDHUP ;
 int uv__handle_stop (TYPE_1__*) ;
 int uv__io_stop (int ,TYPE_3__*,int) ;
 int uv__platform_invalidate_fd (int ,int ) ;

__attribute__((used)) static void uv__poll_stop(uv_poll_t* handle) {
  uv__io_stop(handle->loop,
              &handle->io_watcher,
              POLLIN | POLLOUT | UV__POLLRDHUP | UV__POLLPRI);
  uv__handle_stop(handle);
  uv__platform_invalidate_fd(handle->loop, handle->io_watcher.fd);
}
