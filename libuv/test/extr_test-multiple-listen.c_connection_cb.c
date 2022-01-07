
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 int close_cb ;
 int connection_cb_called ;
 int server ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void connection_cb(uv_stream_t* tcp, int status) {
  ASSERT(status == 0);
  uv_close((uv_handle_t*)&server, close_cb);
  connection_cb_called++;
}
