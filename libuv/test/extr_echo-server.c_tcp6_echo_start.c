
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_handle_t ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;


 int ASSERT (int) ;
 int SOMAXCONN ;
 int TCP ;
 int fprintf (int ,char*) ;
 int loop ;
 int on_connection ;
 int * server ;
 int serverType ;
 int stderr ;
 int tcpServer ;
 scalar_t__ uv_ip6_addr (char*,int,struct sockaddr_in6*) ;
 int uv_listen (int *,int ,int ) ;
 int uv_tcp_bind (int *,struct sockaddr const*,int ) ;
 int uv_tcp_init (int ,int *) ;

__attribute__((used)) static int tcp6_echo_start(int port) {
  struct sockaddr_in6 addr6;
  int r;

  ASSERT(0 == uv_ip6_addr("::1", port, &addr6));

  server = (uv_handle_t*)&tcpServer;
  serverType = TCP;

  r = uv_tcp_init(loop, &tcpServer);
  if (r) {

    fprintf(stderr, "Socket creation error\n");
    return 1;
  }


  r = uv_tcp_bind(&tcpServer, (const struct sockaddr*) &addr6, 0);
  if (r) {

    fprintf(stderr, "IPv6 not supported\n");
    return 0;
  }

  r = uv_listen((uv_stream_t*)&tcpServer, SOMAXCONN, on_connection);
  if (r) {

    fprintf(stderr, "Listen error\n");
    return 1;
  }

  return 0;
}
