
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;


 int ASSERT (int) ;
 int fprintf (int ,char*) ;
 int loop ;
 int on_connection ;
 int server ;
 int stderr ;
 scalar_t__ uv_ip4_addr (char*,int,struct sockaddr_in*) ;
 int uv_listen (int *,int,int ) ;
 int uv_tcp_bind (int *,struct sockaddr const*,int ) ;
 int uv_tcp_init (int ,int *) ;

__attribute__((used)) static int dns_start(int port) {
  struct sockaddr_in addr;
  int r;

  ASSERT(0 == uv_ip4_addr("0.0.0.0", port, &addr));

  r = uv_tcp_init(loop, &server);
  if (r) {

    fprintf(stderr, "Socket creation error\n");
    return 1;
  }

  r = uv_tcp_bind(&server, (const struct sockaddr*) &addr, 0);
  if (r) {

    fprintf(stderr, "Bind error\n");
    return 1;
  }

  r = uv_listen((uv_stream_t*)&server, 128, on_connection);
  if (r) {

    fprintf(stderr, "Listen error\n");
    return 1;
  }

  return 0;
}
