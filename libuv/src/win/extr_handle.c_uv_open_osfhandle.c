
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uv_os_fd_t ;


 int _open_osfhandle (intptr_t,int ) ;

int uv_open_osfhandle(uv_os_fd_t os_fd) {
  return _open_osfhandle((intptr_t) os_fd, 0);
}
