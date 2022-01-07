
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * ssl; } ;
typedef TYPE_1__ h2o_socket_t ;


 int dispose_socket (TYPE_1__*,int ) ;
 int shutdown_ssl (TYPE_1__*,int ) ;

void h2o_socket_close(h2o_socket_t *sock)
{
    if (sock->ssl == ((void*)0)) {
        dispose_socket(sock, 0);
    } else {
        shutdown_ssl(sock, 0);
    }
}
