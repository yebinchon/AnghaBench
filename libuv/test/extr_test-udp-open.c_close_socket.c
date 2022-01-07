
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_os_sock_t ;


 int ASSERT (int) ;
 int close (int ) ;
 int closesocket (int ) ;

__attribute__((used)) static void close_socket(uv_os_sock_t sock) {
  int r;



  r = close(sock);

  ASSERT(r == 0);
}
