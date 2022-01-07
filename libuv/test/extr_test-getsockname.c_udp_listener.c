
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;


 int ASSERT (int) ;
 int alloc ;
 int check_sockname (struct sockaddr*,char*,int ,char*) ;
 int fprintf (int ,char*) ;
 int getsocknamecount ;
 int loop ;
 int memset (struct sockaddr*,int,int) ;
 int server_port ;
 int stderr ;
 int udpServer ;
 int udp_recv ;
 scalar_t__ uv_ip4_addr (char*,int ,struct sockaddr_in*) ;
 int uv_udp_bind (int *,struct sockaddr const*,int ) ;
 int uv_udp_getsockname (int *,struct sockaddr*,int*) ;
 int uv_udp_init (int ,int *) ;
 int uv_udp_recv_start (int *,int ,int ) ;

__attribute__((used)) static int udp_listener(void) {
  struct sockaddr_in addr;
  struct sockaddr sockname;
  int namelen;
  int r;

  ASSERT(0 == uv_ip4_addr("0.0.0.0", server_port, &addr));

  r = uv_udp_init(loop, &udpServer);
  if (r) {
    fprintf(stderr, "Socket creation error\n");
    return 1;
  }

  r = uv_udp_bind(&udpServer, (const struct sockaddr*) &addr, 0);
  if (r) {
    fprintf(stderr, "Bind error\n");
    return 1;
  }

  memset(&sockname, -1, sizeof sockname);
  namelen = sizeof sockname;
  r = uv_udp_getsockname(&udpServer, &sockname, &namelen);
  ASSERT(r == 0);
  check_sockname(&sockname, "0.0.0.0", server_port, "udp listener socket");
  getsocknamecount++;

  r = uv_udp_recv_start(&udpServer, alloc, udp_recv);
  ASSERT(r == 0);

  return 0;
}
