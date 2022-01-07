
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_loop_t ;


 int uv__kqueue_init (int *) ;

int uv__platform_loop_init(uv_loop_t* loop) {
  return uv__kqueue_init(loop);
}
