
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;


 int ASSERT (int) ;
 int UV_ENOTCONN ;
 int check_sockname (struct sockaddr*,char*,int ,char*) ;
 int fprintf (int ,char*) ;
 int getpeernamecount ;
 int getsocknamecount ;
 int loop ;
 int memset (struct sockaddr*,int,int) ;
 int on_connection ;
 int server_port ;
 int stderr ;
 int tcpServer ;
 scalar_t__ uv_ip4_addr (char*,int ,struct sockaddr_in*) ;
 int uv_listen (int *,int,int ) ;
 int uv_tcp_bind (int *,struct sockaddr const*,int ) ;
 int uv_tcp_getpeername (int *,struct sockaddr*,int*) ;
 int uv_tcp_getsockname (int *,struct sockaddr*,int*) ;
 int uv_tcp_init (int ,int *) ;

__attribute__((used)) static int tcp_listener(void) {
  struct sockaddr_in addr;
  struct sockaddr sockname, peername;
  int namelen;
  int r;

  ASSERT(0 == uv_ip4_addr("0.0.0.0", server_port, &addr));

  r = uv_tcp_init(loop, &tcpServer);
  if (r) {
    fprintf(stderr, "Socket creation error\n");
    return 1;
  }

  r = uv_tcp_bind(&tcpServer, (const struct sockaddr*) &addr, 0);
  if (r) {
    fprintf(stderr, "Bind error\n");
    return 1;
  }

  r = uv_listen((uv_stream_t*)&tcpServer, 128, on_connection);
  if (r) {
    fprintf(stderr, "Listen error\n");
    return 1;
  }

  memset(&sockname, -1, sizeof sockname);
  namelen = sizeof sockname;
  r = uv_tcp_getsockname(&tcpServer, &sockname, &namelen);
  ASSERT(r == 0);
  check_sockname(&sockname, "0.0.0.0", server_port, "server socket");
  getsocknamecount++;

  namelen = sizeof sockname;
  r = uv_tcp_getpeername(&tcpServer, &peername, &namelen);
  ASSERT(r == UV_ENOTCONN);
  getpeernamecount++;

  return 0;
}
