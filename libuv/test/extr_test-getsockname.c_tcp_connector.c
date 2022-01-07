
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr_in {int sin_port; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct TYPE_5__ {int * data; } ;


 scalar_t__ AF_INET ;
 int ASSERT (int) ;
 scalar_t__ connect_port ;
 int connect_req ;
 int loop ;
 scalar_t__ ntohs (int ) ;
 int on_connect ;
 int server_port ;
 TYPE_1__ tcp ;
 scalar_t__ uv_ip4_addr (char*,int ,struct sockaddr_in*) ;
 int uv_tcp_connect (int *,TYPE_1__*,struct sockaddr const*,int ) ;
 int uv_tcp_getsockname (TYPE_1__*,struct sockaddr*,int*) ;
 int uv_tcp_init (int ,TYPE_1__*) ;

__attribute__((used)) static void tcp_connector(void) {
  struct sockaddr_in server_addr;
  struct sockaddr sockname;
  int r, namelen;

  ASSERT(0 == uv_ip4_addr("127.0.0.1", server_port, &server_addr));

  r = uv_tcp_init(loop, &tcp);
  tcp.data = &connect_req;
  ASSERT(!r);

  r = uv_tcp_connect(&connect_req,
                     &tcp,
                     (const struct sockaddr*) &server_addr,
                     on_connect);
  ASSERT(!r);


  namelen = sizeof sockname;
  r = uv_tcp_getsockname(&tcp, &sockname, &namelen);
  ASSERT(!r);
  ASSERT(sockname.sa_family == AF_INET);
  connect_port = ntohs(((struct sockaddr_in*) &sockname)->sin_port);
  ASSERT(connect_port > 0);
}
