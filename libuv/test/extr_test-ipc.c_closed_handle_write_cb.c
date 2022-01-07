
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_write_t ;


 int ASSERT (int) ;
 int UV_EBADF ;
 int closed_handle_write ;

__attribute__((used)) static void closed_handle_write_cb(uv_write_t* req, int status) {
  ASSERT(status == UV_EBADF);
  closed_handle_write = 1;
}
