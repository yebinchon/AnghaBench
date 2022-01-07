
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uv_os_sock_t ;


 int AF_INET ;
 int ASSERT (int) ;
 scalar_t__ INVALID_SOCKET ;
 int IPPROTO_IP ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int setsockopt (scalar_t__,int ,int ,int*,int) ;
 scalar_t__ socket (int ,int ,int ) ;

__attribute__((used)) static uv_os_sock_t create_udp_socket(void) {
  uv_os_sock_t sock;

  sock = socket(AF_INET, SOCK_DGRAM, IPPROTO_IP);



  ASSERT(sock >= 0);



  {

    int yes = 1;
    int r = setsockopt(sock, SOL_SOCKET, SO_REUSEADDR, &yes, sizeof yes);
    ASSERT(r == 0);
  }


  return sock;
}
