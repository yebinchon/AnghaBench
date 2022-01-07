
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;


 int ASSERT (int) ;
 int conn ;
 int conn_close_cb_called ;
 int timer ;
 int timer_close_cb_called ;

__attribute__((used)) static void close_cb(uv_handle_t* handle) {
  if (handle == (uv_handle_t*)&conn)
    conn_close_cb_called++;
  else if (handle == (uv_handle_t*)&timer)
    timer_close_cb_called++;
  else
    ASSERT(0 && "bad handle in close_cb");
}
