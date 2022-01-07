
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ uv_udp_t ;
typedef int ttl ;


 int IPV6_UNICAST_HOPS ;
 int IP_TTL ;
 int UV_EINVAL ;
 int UV_ENOTSUP ;
 int UV_HANDLE_IPV6 ;
 int uv__setsockopt (TYPE_1__*,int ,int ,int*,int) ;
 int uv__setsockopt_maybe_char (TYPE_1__*,int ,int ,int) ;

int uv_udp_set_ttl(uv_udp_t* handle, int ttl) {
  if (ttl < 1 || ttl > 255)
    return UV_EINVAL;
  return uv__setsockopt_maybe_char(handle,
                                   IP_TTL,
                                   IPV6_UNICAST_HOPS,
                                   ttl);



}
