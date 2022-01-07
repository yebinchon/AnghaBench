
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_handle_t ;
struct TYPE_3__ {char* base; int len; } ;
typedef TYPE_1__ uv_buf_t ;
typedef int base ;



__attribute__((used)) static void alloc_cb(uv_handle_t* handle, size_t size, uv_buf_t* buf) {
  static char base[1024];

  buf->base = base;
  buf->len = sizeof(base);
}
