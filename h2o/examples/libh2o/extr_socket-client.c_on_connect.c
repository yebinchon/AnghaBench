
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int data; } ;
typedef TYPE_1__ h2o_socket_t ;


 int exit_loop ;
 int fprintf (int ,char*,char const*) ;
 int h2o_iovec_init (int *,int ) ;
 int h2o_socket_close (TYPE_1__*) ;
 int h2o_socket_ssl_handshake (TYPE_1__*,int *,int ,int ,int ) ;
 int h2o_socket_write (TYPE_1__*,int ,int,int ) ;
 int host ;
 int on_handshake_complete ;
 int on_write ;
 int * ssl_ctx ;
 int stderr ;

__attribute__((used)) static void on_connect(h2o_socket_t *sock, const char *err)
{
    if (err != ((void*)0)) {

        fprintf(stderr, "failed to connect to host:%s\n", err);
        h2o_socket_close(sock);
        exit_loop = 1;
        return;
    }

    if (ssl_ctx != ((void*)0)) {
        h2o_socket_ssl_handshake(sock, ssl_ctx, host, h2o_iovec_init(((void*)0), 0), on_handshake_complete);
    } else {
        h2o_socket_write(sock, sock->data, 1, on_write);
    }
}
