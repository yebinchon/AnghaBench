
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_os_sock_t ;


 int ASSERT (int) ;
 int FIONBIO ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int fcntl (int ,int ,int) ;
 int ioctlsocket (int ,int ,unsigned long*) ;

__attribute__((used)) static void set_nonblocking(uv_os_sock_t sock) {
  int r;





  int flags = fcntl(sock, F_GETFL, 0);
  ASSERT(flags >= 0);
  r = fcntl(sock, F_SETFL, flags | O_NONBLOCK);
  ASSERT(r >= 0);

}
