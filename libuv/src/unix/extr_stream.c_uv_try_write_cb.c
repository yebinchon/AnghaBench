
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_write_t ;


 int abort () ;

void uv_try_write_cb(uv_write_t* req, int status) {

  abort();
}
