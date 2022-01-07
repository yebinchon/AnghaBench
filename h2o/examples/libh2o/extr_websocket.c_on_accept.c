
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_socket_t ;


 int accept_ctx ;
 int h2o_accept (int *,int *) ;
 int * h2o_evloop_socket_accept (int *) ;

__attribute__((used)) static void on_accept(h2o_socket_t *listener, const char *err)
{
    h2o_socket_t *sock;

    if (err != ((void*)0)) {
        return;
    }

    if ((sock = h2o_evloop_socket_accept(listener)) == ((void*)0))
        return;
    h2o_accept(&accept_ctx, sock);
}
