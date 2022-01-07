
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int handle; } ;
typedef TYPE_1__ uv_write_t ;
typedef int uv_buf_t ;


 int ASSERT (int) ;
 int shutdown_cb_called ;
 scalar_t__ shutdown_requested ;
 int uv_buf_init (char*,int) ;
 int uv_write (int *,int ,int *,int,void (*) (TYPE_1__*,int)) ;
 int write_cb_called ;
 int write_req ;

__attribute__((used)) static void write1_cb(uv_write_t* req, int status) {
  uv_buf_t buf;
  int r;

  ASSERT(req != ((void*)0));
  if (status) {
    ASSERT(shutdown_cb_called);
    return;
  }

  if (shutdown_requested)
    return;

  buf = uv_buf_init("P", 1);
  r = uv_write(&write_req, req->handle, &buf, 1, write1_cb);
  ASSERT(r == 0);

  write_cb_called++;
}
