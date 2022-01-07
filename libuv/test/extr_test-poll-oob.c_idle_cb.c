
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_idle_t ;
typedef int uv_handle_t ;


 int client_handle ;
 scalar_t__ kMaxTicks ;
 int peer_handle ;
 int * poll_req ;
 int server_handle ;
 scalar_t__ ticks ;
 int uv_close (int *,int *) ;
 int uv_poll_stop (int *) ;
 int uv_sleep (int) ;

__attribute__((used)) static void idle_cb(uv_idle_t* idle) {
  uv_sleep(100);
  if (++ticks < kMaxTicks)
    return;

  uv_poll_stop(&poll_req[0]);
  uv_poll_stop(&poll_req[1]);
  uv_close((uv_handle_t*) &server_handle, ((void*)0));
  uv_close((uv_handle_t*) &client_handle, ((void*)0));
  uv_close((uv_handle_t*) &peer_handle, ((void*)0));
  uv_close((uv_handle_t*) idle, ((void*)0));
}
