
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int handle; } ;
typedef TYPE_1__ uv_connect_t ;
typedef int uv_buf_t ;
typedef int base ;


 int ASSERT (int) ;
 int REQ_COUNT ;
 int connect_cb_called ;
 int uv_buf_init (char*,int) ;
 int uv_write (int *,int ,int *,int,int ) ;
 int write_cb ;
 int * write_requests ;

__attribute__((used)) static void connect_cb(uv_connect_t* req, int status) {
  static char base[1024];
  int r;
  int i;
  uv_buf_t buf;

  ASSERT(status == 0);
  connect_cb_called++;

  buf = uv_buf_init(base, sizeof(base));

  for (i = 0; i < REQ_COUNT; i++) {
    r = uv_write(&write_requests[i],
                 req->handle,
                 &buf,
                 1,
                 write_cb);
    ASSERT(r == 0);
  }
}
