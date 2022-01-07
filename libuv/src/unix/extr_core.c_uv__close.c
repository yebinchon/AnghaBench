
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SAVE_ERRNO (int ) ;
 int STDERR_FILENO ;
 int assert (int) ;
 int epoll_file_close (int) ;
 int uv__close_nocheckstdio (int) ;

int uv__close(int fd) {
  assert(fd > STDERR_FILENO);



  return uv__close_nocheckstdio(fd);
}
