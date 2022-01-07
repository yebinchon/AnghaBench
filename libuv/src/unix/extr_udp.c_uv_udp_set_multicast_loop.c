
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ uv_udp_t ;
typedef int on ;


 int IPV6_MULTICAST_LOOP ;
 int IP_MULTICAST_LOOP ;
 int UV_HANDLE_IPV6 ;
 int uv__setsockopt (TYPE_1__*,int ,int ,int*,int) ;
 int uv__setsockopt_maybe_char (TYPE_1__*,int ,int ,int) ;

int uv_udp_set_multicast_loop(uv_udp_t* handle, int on) {
  return uv__setsockopt_maybe_char(handle,
                                   IP_MULTICAST_LOOP,
                                   IPV6_MULTICAST_LOOP,
                                   on);
}
