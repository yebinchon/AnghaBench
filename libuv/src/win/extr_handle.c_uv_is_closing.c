
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ uv_handle_t ;


 int UV_HANDLE_CLOSED ;
 int UV_HANDLE_CLOSING ;

int uv_is_closing(const uv_handle_t* handle) {
  return !!(handle->flags & (UV_HANDLE_CLOSING | UV_HANDLE_CLOSED));
}
