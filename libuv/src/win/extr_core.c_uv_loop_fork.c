
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_loop_t ;


 int UV_ENOSYS ;

int uv_loop_fork(uv_loop_t* loop) {
  return UV_ENOSYS;
}
