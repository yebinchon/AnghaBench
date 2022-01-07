
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;


 int UDP ;
 int echo_alloc ;
 int fprintf (int ,char*,char*) ;
 int loop ;
 int on_recv ;
 int * server ;
 int serverType ;
 int stderr ;
 int udpServer ;
 char* uv_strerror (int) ;
 int uv_udp_init (int ,int *) ;
 int uv_udp_recv_start (int *,int ,int ) ;

__attribute__((used)) static int udp4_echo_start(int port) {
  int r;

  server = (uv_handle_t*)&udpServer;
  serverType = UDP;

  r = uv_udp_init(loop, &udpServer);
  if (r) {
    fprintf(stderr, "uv_udp_init: %s\n", uv_strerror(r));
    return 1;
  }

  r = uv_udp_recv_start(&udpServer, echo_alloc, on_recv);
  if (r) {
    fprintf(stderr, "uv_udp_recv_start: %s\n", uv_strerror(r));
    return 1;
  }

  return 0;
}
