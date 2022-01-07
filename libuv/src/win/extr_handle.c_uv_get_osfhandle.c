
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_os_fd_t ;


 int uv__get_osfhandle (int) ;

uv_os_fd_t uv_get_osfhandle(int fd) {
  return uv__get_osfhandle(fd);
}
