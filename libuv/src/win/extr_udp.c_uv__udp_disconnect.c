
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int socket; } ;
typedef TYPE_1__ uv_udp_t ;
struct sockaddr {int dummy; } ;
typedef int addr ;


 int UV_HANDLE_UDP_CONNECTED ;
 int connect (int ,struct sockaddr*,int) ;
 int memset (struct sockaddr*,int ,int) ;
 int uv_translate_sys_error (int) ;

int uv__udp_disconnect(uv_udp_t* handle) {
    int err;
    struct sockaddr addr;

    memset(&addr, 0, sizeof(addr));

    err = connect(handle->socket, &addr, sizeof(addr));
    if (err)
      return uv_translate_sys_error(err);

    handle->flags &= ~UV_HANDLE_UDP_CONNECTED;
    return 0;
}
