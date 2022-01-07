
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_handle_type ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ uv_handle_t ;



uv_handle_type uv_handle_get_type(const uv_handle_t* handle) {
  return handle->type;
}
