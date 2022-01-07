
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int nwatchers; int ** watchers; } ;
typedef TYPE_1__ uv_loop_t ;



int uv__fd_exists(uv_loop_t* loop, int fd) {
  return (unsigned) fd < loop->nwatchers && loop->watchers[fd] != ((void*)0);
}
