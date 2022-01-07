
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_loop_t ;


 int uv__fsevents_loop_delete (int *) ;

void uv__platform_loop_delete(uv_loop_t* loop) {
  uv__fsevents_loop_delete(loop);
}
