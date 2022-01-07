
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_tcp_t ;
typedef int uv_os_sock_t ;
typedef scalar_t__ uv_os_fd_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 int close (scalar_t__) ;
 int closesocket (int ) ;
 int uv_fileno (int *,scalar_t__*) ;

__attribute__((used)) static void close_socket(uv_tcp_t* sock) {
  uv_os_fd_t fd;
  int r;

  r = uv_fileno((uv_handle_t*)sock, &fd);
  ASSERT(r == 0);



  r = close(fd);

  ASSERT(r == 0);
}
