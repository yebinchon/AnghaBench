
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* data; } ;
typedef TYPE_1__ uv_handle_t ;



void uv_handle_set_data(uv_handle_t* handle, void* data) {
  handle->data = data;
}
