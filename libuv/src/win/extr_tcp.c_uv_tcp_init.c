
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_tcp_t ;
typedef int uv_loop_t ;


 int AF_UNSPEC ;
 int uv_tcp_init_ex (int *,int *,int ) ;

int uv_tcp_init(uv_loop_t* loop, uv_tcp_t* handle) {
  return uv_tcp_init_ex(loop, handle, AF_UNSPEC);
}
