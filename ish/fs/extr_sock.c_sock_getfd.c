
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int * ops; } ;
typedef int fd_t ;


 struct fd* f_get (int ) ;
 int socket_fdops ;

__attribute__((used)) static struct fd *sock_getfd(fd_t sock_fd) {
    struct fd *sock = f_get(sock_fd);
    if (sock == ((void*)0) || sock->ops != &socket_fdops)
        return ((void*)0);
    return sock;
}
