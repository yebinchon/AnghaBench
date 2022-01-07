
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_socket_t ;


 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int h2o_iovec_init (int *,int ) ;
 int h2o_socket_close (int *) ;
 int h2o_socket_ssl_handshake (int *,int *,char*,int ,int (*) (int *,int *)) ;
 scalar_t__ mode_server ;
 int on_handshake_complete (int *,int *) ;
 int * ssl_ctx ;
 int stderr ;

__attribute__((used)) static void on_connect(h2o_socket_t *sock, const char *err)
{
    if (err != ((void*)0)) {

        fprintf(stderr, "failed to connect to host:%s\n", err);
        h2o_socket_close(sock);
        exit(1);
        return;
    }

    if (ssl_ctx != ((void*)0)) {
        h2o_socket_ssl_handshake(sock, ssl_ctx, mode_server ? ((void*)0) : "blahblah", h2o_iovec_init(((void*)0), 0), on_handshake_complete);
    } else {
        on_handshake_complete(sock, ((void*)0));
    }
}
