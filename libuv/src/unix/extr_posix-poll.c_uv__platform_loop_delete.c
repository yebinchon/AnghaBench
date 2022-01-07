
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * poll_fds; } ;
typedef TYPE_1__ uv_loop_t ;


 int uv__free (int *) ;

void uv__platform_loop_delete(uv_loop_t* loop) {
  uv__free(loop->poll_fds);
  loop->poll_fds = ((void*)0);
}
