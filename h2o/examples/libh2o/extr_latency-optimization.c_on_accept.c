
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_socket_t ;


 int * h2o_evloop_socket_accept (int *) ;
 int h2o_iovec_init (int *,int ) ;
 int h2o_socket_close (int *) ;
 int h2o_socket_ssl_handshake (int *,int *,char*,int ,int (*) (int *,int *)) ;
 scalar_t__ mode_server ;
 int on_handshake_complete (int *,int *) ;
 int * sock ;
 int * ssl_ctx ;

__attribute__((used)) static void on_accept(h2o_socket_t *listener, const char *err)
{
    if (err != ((void*)0))
        return;

    if ((sock = h2o_evloop_socket_accept(listener)) != ((void*)0)) {
        h2o_socket_close(listener);
        if (ssl_ctx != ((void*)0)) {
            h2o_socket_ssl_handshake(sock, ssl_ctx, mode_server ? ((void*)0) : "blahblah", h2o_iovec_init(((void*)0), 0),
                                     on_handshake_complete);
        } else {
            on_handshake_complete(sock, ((void*)0));
        }
    }
}
