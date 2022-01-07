
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_os_fd_t ;
typedef int uv_handle_t ;
typedef scalar_t__ (* uv__peersockfunc ) (int ,struct sockaddr*,scalar_t__*) ;
struct sockaddr {int dummy; } ;
typedef scalar_t__ socklen_t ;


 int UV__ERR (int ) ;
 int errno ;
 int uv_fileno (int const*,int *) ;

int uv__getsockpeername(const uv_handle_t* handle,
                        uv__peersockfunc func,
                        struct sockaddr* name,
                        int* namelen) {
  socklen_t socklen;
  uv_os_fd_t fd;
  int r;

  r = uv_fileno(handle, &fd);
  if (r < 0)
    return r;


  socklen = (socklen_t) *namelen;

  if (func(fd, name, &socklen))
    return UV__ERR(errno);

  *namelen = (int) socklen;
  return 0;
}
