
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int delayed_error; } ;
typedef TYPE_1__ uv_tcp_t ;
typedef int uv_handle_t ;
struct sockaddr {int dummy; } ;


 int getpeername ;
 int uv__getsockpeername (int const*,int ,struct sockaddr*,int*) ;

int uv_tcp_getpeername(const uv_tcp_t* handle,
                       struct sockaddr* name,
                       int* namelen) {

  if (handle->delayed_error)
    return handle->delayed_error;

  return uv__getsockpeername((const uv_handle_t*) handle,
                             getpeername,
                             name,
                             namelen);
}
