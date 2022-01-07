
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_buf_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;


 int ASSERT (int) ;
 int loop ;
 int send_req ;
 int server_port ;
 int udp ;
 int udp_send ;
 int uv_buf_init (char*,int) ;
 scalar_t__ uv_ip4_addr (char*,int ,struct sockaddr_in*) ;
 int uv_udp_init (int ,int *) ;
 int uv_udp_send (int *,int *,int *,int,struct sockaddr const*,int ) ;

__attribute__((used)) static void udp_sender(void) {
  struct sockaddr_in server_addr;
  uv_buf_t buf;
  int r;

  r = uv_udp_init(loop, &udp);
  ASSERT(!r);

  buf = uv_buf_init("PING", 4);
  ASSERT(0 == uv_ip4_addr("127.0.0.1", server_port, &server_addr));

  r = uv_udp_send(&send_req,
                  &udp,
                  &buf,
                  1,
                  (const struct sockaddr*) &server_addr,
                  udp_send);
  ASSERT(!r);
}
