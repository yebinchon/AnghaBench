
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;
typedef int uv_handle_t ;


 int check_handle ;
 int client_handle ;
 int peer_handle ;
 int server_handle ;
 int timer_handle ;
 int uv_close (int *,int *) ;

__attribute__((used)) static void timer_cb(uv_timer_t* handle) {
  uv_close((uv_handle_t*) &check_handle, ((void*)0));
  uv_close((uv_handle_t*) &timer_handle, ((void*)0));
  uv_close((uv_handle_t*) &server_handle, ((void*)0));
  uv_close((uv_handle_t*) &client_handle, ((void*)0));
  uv_close((uv_handle_t*) &peer_handle, ((void*)0));
}
