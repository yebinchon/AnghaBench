
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uv_os_sock_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;


 int AF_INET ;
 int ASSERT (int) ;
 scalar_t__ INVALID_SOCKET ;
 int IPPROTO_IP ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int bind (scalar_t__,struct sockaddr const*,int) ;
 int setsockopt (scalar_t__,int ,int ,int*,int) ;
 scalar_t__ socket (int ,int ,int ) ;

__attribute__((used)) static uv_os_sock_t create_bound_socket (struct sockaddr_in bind_addr) {
  uv_os_sock_t sock;
  int r;

  sock = socket(AF_INET, SOCK_STREAM, IPPROTO_IP);



  ASSERT(sock >= 0);



  {

    int yes = 1;
    r = setsockopt(sock, SOL_SOCKET, SO_REUSEADDR, &yes, sizeof yes);
    ASSERT(r == 0);
  }


  r = bind(sock, (const struct sockaddr*) &bind_addr, sizeof bind_addr);
  ASSERT(r == 0);

  return sock;
}
