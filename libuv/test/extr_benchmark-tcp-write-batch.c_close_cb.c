
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;


 int ASSERT (int) ;
 int close_cb_called ;
 int tcp_client ;

__attribute__((used)) static void close_cb(uv_handle_t* handle) {
  ASSERT(handle == (uv_handle_t*)&tcp_client);
  close_cb_called++;
}
