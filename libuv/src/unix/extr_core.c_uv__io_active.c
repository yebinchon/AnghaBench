
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int pevents; } ;
typedef TYPE_1__ uv__io_t ;


 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int UV__POLLPRI ;
 unsigned int UV__POLLRDHUP ;
 int assert (int) ;

int uv__io_active(const uv__io_t* w, unsigned int events) {
  assert(0 == (events & ~(POLLIN | POLLOUT | UV__POLLRDHUP | UV__POLLPRI)));
  assert(0 != events);
  return 0 != (w->pevents & events);
}
