
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_loop_t ;
typedef int FILE ;


 int uv__print_handles (int *,int,int *) ;

void uv_print_active_handles(uv_loop_t* loop, FILE* stream) {
  uv__print_handles(loop, 1, stream);
}
