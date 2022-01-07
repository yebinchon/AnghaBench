
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_tcp_t ;
typedef int uv_handle_t ;
struct TYPE_3__ {scalar_t__ handle; } ;
typedef TYPE_1__ uv_connect_t ;
struct sockaddr {int dummy; } ;


 int ASSERT (int) ;
 int check_sockname (struct sockaddr*,char*,int ,char*) ;
 int getpeernamecount ;
 int getsocknamecount ;
 int server_port ;
 int tcp ;
 int uv_close (int *,int *) ;
 int uv_tcp_getpeername (int *,struct sockaddr*,int*) ;
 int uv_tcp_getsockname (int *,struct sockaddr*,int*) ;

__attribute__((used)) static void on_connect(uv_connect_t* req, int status) {
  struct sockaddr sockname, peername;
  int r, namelen;

  ASSERT(status == 0);

  namelen = sizeof sockname;
  r = uv_tcp_getsockname((uv_tcp_t*) req->handle, &sockname, &namelen);
  ASSERT(r == 0);
  check_sockname(&sockname, "127.0.0.1", 0, "connected socket");
  getsocknamecount++;

  namelen = sizeof peername;
  r = uv_tcp_getpeername((uv_tcp_t*) req->handle, &peername, &namelen);
  ASSERT(r == 0);
  check_sockname(&peername, "127.0.0.1", server_port, "connected socket peer");
  getpeernamecount++;

  uv_close((uv_handle_t*)&tcp, ((void*)0));
}
