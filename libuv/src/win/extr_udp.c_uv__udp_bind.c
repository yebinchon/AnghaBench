
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_udp_t ;
struct sockaddr {int dummy; } ;


 int uv_translate_sys_error (int) ;
 int uv_udp_maybe_bind (int *,struct sockaddr const*,unsigned int,unsigned int) ;

int uv__udp_bind(uv_udp_t* handle,
                 const struct sockaddr* addr,
                 unsigned int addrlen,
                 unsigned int flags) {
  int err;

  err = uv_udp_maybe_bind(handle, addr, addrlen, flags);
  if (err)
    return uv_translate_sys_error(err);

  return 0;
}
