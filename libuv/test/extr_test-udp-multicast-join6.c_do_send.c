
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_udp_send_t ;
typedef int uv_buf_t ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;


 int ASSERT (int) ;
 int MULTICAST_ADDR ;
 int TEST_PORT ;
 int client ;
 int sv_send_cb ;
 int uv_buf_init (char*,int) ;
 scalar_t__ uv_ip6_addr (int ,int ,struct sockaddr_in6*) ;
 int uv_udp_send (int *,int *,int *,int,struct sockaddr const*,int ) ;

__attribute__((used)) static int do_send(uv_udp_send_t* send_req) {
  uv_buf_t buf;
  struct sockaddr_in6 addr;

  buf = uv_buf_init("PING", 4);

  ASSERT(0 == uv_ip6_addr(MULTICAST_ADDR, TEST_PORT, &addr));


  return uv_udp_send(send_req,
                     &client,
                     &buf,
                     1,
                     (const struct sockaddr*) &addr,
                     sv_send_cb);
}
