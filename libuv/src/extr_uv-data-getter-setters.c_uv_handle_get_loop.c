
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_loop_t ;
struct TYPE_3__ {int * loop; } ;
typedef TYPE_1__ uv_handle_t ;



uv_loop_t* uv_handle_get_loop(const uv_handle_t* handle) {
  return handle->loop;
}
