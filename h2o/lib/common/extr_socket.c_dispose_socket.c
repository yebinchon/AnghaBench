
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void (* cb ) (void*) ;void* data; } ;
struct TYPE_6__ {TYPE_1__ on_close; int * _peername; int input; int * ssl; } ;
typedef TYPE_2__ h2o_socket_t ;


 int destroy_ssl (int *) ;
 int do_dispose_socket (TYPE_2__*) ;
 int free (int *) ;
 int h2o_buffer_dispose (int *) ;

__attribute__((used)) static void dispose_socket(h2o_socket_t *sock, const char *err)
{
    void (*close_cb)(void *data);
    void *close_cb_data;

    if (sock->ssl != ((void*)0)) {
        destroy_ssl(sock->ssl);
        sock->ssl = ((void*)0);
    }
    h2o_buffer_dispose(&sock->input);
    if (sock->_peername != ((void*)0)) {
        free(sock->_peername);
        sock->_peername = ((void*)0);
    }

    close_cb = sock->on_close.cb;
    close_cb_data = sock->on_close.data;

    do_dispose_socket(sock);

    if (close_cb != ((void*)0))
        close_cb(close_cb_data);
}
