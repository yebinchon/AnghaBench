
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ poll_fds_iterating; scalar_t__ poll_fds_size; scalar_t__ poll_fds_used; int * poll_fds; } ;
typedef TYPE_1__ uv_loop_t ;



int uv__platform_loop_init(uv_loop_t* loop) {
  loop->poll_fds = ((void*)0);
  loop->poll_fds_used = 0;
  loop->poll_fds_size = 0;
  loop->poll_fds_iterating = 0;
  return 0;
}
