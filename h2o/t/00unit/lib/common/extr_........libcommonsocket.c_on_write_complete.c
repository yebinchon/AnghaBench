
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* write ) (TYPE_2__*,char const*) ;} ;
struct TYPE_6__ {TYPE_1__ _cb; int * ssl; } ;
typedef TYPE_2__ h2o_socket_t ;
typedef int (* h2o_socket_cb ) (TYPE_2__*,char const*) ;


 int clear_output_buffer (int *) ;

void on_write_complete(h2o_socket_t *sock, const char *err)
{
    h2o_socket_cb cb;

    if (sock->ssl != ((void*)0))
        clear_output_buffer(sock->ssl);

    cb = sock->_cb.write;
    sock->_cb.write = ((void*)0);
    cb(sock, err);
}
