
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
typedef TYPE_1__ h2o_socket_t ;


 int exit_loop ;
 int fprintf (int ,char*,char const*) ;
 int h2o_socket_close (TYPE_1__*) ;
 int h2o_socket_write (TYPE_1__*,int ,int,int ) ;
 int on_write ;
 int stderr ;

__attribute__((used)) static void on_handshake_complete(h2o_socket_t *sock, const char *err)
{
    if (err != ((void*)0)) {

        fprintf(stderr, "TLS handshake failure:%s\n", err);
        h2o_socket_close(sock);
        exit_loop = 1;
        return;
    }

    h2o_socket_write(sock, sock->data, 1, on_write);
}
