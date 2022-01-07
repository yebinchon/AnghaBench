
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_tcp_t ;
typedef int uv_stream_t ;
typedef int uv_os_sock_t ;


 int ASSERT (int) ;
 int SOMAXCONN ;
 int _get_osfhandle (int) ;
 int uv_default_loop () ;
 int uv_listen (int *,int ,int *) ;
 int uv_tcp_init (int ,int *) ;
 int uv_tcp_open (int *,int) ;

int spawn_tcp_server_helper(void) {
  uv_tcp_t tcp;
  uv_os_sock_t handle;
  int r;

  r = uv_tcp_init(uv_default_loop(), &tcp);
  ASSERT(r == 0);




  handle = 3;

  r = uv_tcp_open(&tcp, handle);
  ASSERT(r == 0);




  r = uv_listen((uv_stream_t*)&tcp, SOMAXCONN, ((void*)0));
  ASSERT(r == 0);

  return 1;
}
