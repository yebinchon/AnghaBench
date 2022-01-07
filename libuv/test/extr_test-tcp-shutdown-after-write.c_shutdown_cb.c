
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_shutdown_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 int close_cb ;
 int conn ;
 int shutdown_cb_called ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void shutdown_cb(uv_shutdown_t* req, int status) {
  ASSERT(status == 0);
  shutdown_cb_called++;
  uv_close((uv_handle_t*)&conn, close_cb);
}
