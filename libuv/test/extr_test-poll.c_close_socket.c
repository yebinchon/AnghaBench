
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_os_sock_t ;


 int ASSERT (int) ;
 scalar_t__ ECONNRESET ;
 int close (int ) ;
 int closesocket (int ) ;
 scalar_t__ errno ;

__attribute__((used)) static void close_socket(uv_os_sock_t sock) {
  int r;



  r = close(sock);




  ASSERT(r == 0 || errno == ECONNRESET);
}
