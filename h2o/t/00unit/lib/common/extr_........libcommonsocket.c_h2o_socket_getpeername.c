
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef int socklen_t ;
struct TYPE_7__ {TYPE_1__* _peername; } ;
typedef TYPE_2__ h2o_socket_t ;
struct TYPE_6__ {int len; int addr; } ;


 int get_peername_uncached (TYPE_2__*,struct sockaddr*) ;
 int h2o_socket_setpeername (TYPE_2__*,struct sockaddr*,int ) ;
 int memcpy (struct sockaddr*,int *,int ) ;

socklen_t h2o_socket_getpeername(h2o_socket_t *sock, struct sockaddr *sa)
{

    if (sock->_peername != ((void*)0)) {
        memcpy(sa, &sock->_peername->addr, sock->_peername->len);
        return sock->_peername->len;
    }

    socklen_t len = get_peername_uncached(sock, sa);
    h2o_socket_setpeername(sock, sa, len);
    return len;
}
