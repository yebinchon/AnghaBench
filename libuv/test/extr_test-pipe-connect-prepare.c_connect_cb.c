
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;
typedef int uv_connect_t ;


 int ASSERT (int) ;
 int UV_ENOENT ;
 int close_cb ;
 int connect_cb_called ;
 int pipe_handle ;
 int prepare_handle ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void connect_cb(uv_connect_t* connect_req, int status) {
  ASSERT(status == UV_ENOENT);
  connect_cb_called++;
  uv_close((uv_handle_t*)&prepare_handle, close_cb);
  uv_close((uv_handle_t*)&pipe_handle, close_cb);
}
