
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_write_t ;
typedef int uv_handle_t ;


 int tcp_handle ;
 int timer_handle ;
 int uv_close (int *,int *) ;

__attribute__((used)) static void write_cb(uv_write_t* req, int status) {
  uv_close((uv_handle_t*) &timer_handle, ((void*)0));
  uv_close((uv_handle_t*) &tcp_handle, ((void*)0));
}
