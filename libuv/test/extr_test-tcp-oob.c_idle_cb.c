
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_idle_t ;
typedef int uv_handle_t ;


 int client_handle ;
 scalar_t__ kMaxTicks ;
 int peer_handle ;
 int server_handle ;
 scalar_t__ ticks ;
 int uv_close (int *,int *) ;

__attribute__((used)) static void idle_cb(uv_idle_t* idle) {
  if (++ticks < kMaxTicks)
    return;

  uv_close((uv_handle_t*) &server_handle, ((void*)0));
  uv_close((uv_handle_t*) &client_handle, ((void*)0));
  uv_close((uv_handle_t*) &peer_handle, ((void*)0));
  uv_close((uv_handle_t*) idle, ((void*)0));
}
