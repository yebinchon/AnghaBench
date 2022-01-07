
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int handle; } ;
typedef TYPE_1__ uv_connect_t ;
typedef int uv_buf_t ;


 int ASSERT (int) ;
 int buffer ;
 int connect_cb_called ;
 TYPE_1__ connect_req ;
 int uv_buf_init (int ,int) ;
 int uv_write (int *,int ,int *,int,int ) ;
 int write_cb ;
 int write_req ;

__attribute__((used)) static void connect_and_write(uv_connect_t* req, int status) {
  uv_buf_t buf = uv_buf_init(buffer, sizeof buffer);
  ASSERT(req == &connect_req);
  ASSERT(status == 0);
  uv_write(&write_req, req->handle, &buf, 1, write_cb);
  connect_cb_called++;
}
