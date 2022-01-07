
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_loop_t ;


 int uv__platform_loop_delete (int *) ;
 int uv__platform_loop_init (int *) ;

int uv__io_fork(uv_loop_t* loop) {
  uv__platform_loop_delete(loop);

  return uv__platform_loop_init(loop);
}
