
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ handle; } ;
typedef TYPE_1__ uv_write_t ;
typedef int uv_handle_t ;


 int close_cb ;
 int conns_failed ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 int uv_close (int *,int ) ;
 char* uv_err_name (int) ;

__attribute__((used)) static void after_write(uv_write_t* req, int status) {
  if (status != 0) {
    fprintf(stderr, "write error %s\n", uv_err_name(status));
    uv_close((uv_handle_t*)req->handle, close_cb);
    conns_failed++;
    return;
  }
}
