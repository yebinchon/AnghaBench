
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int domain; int type; int protocol; int unix_scm; int unix_got_peer; } ;
struct TYPE_4__ {int mode; } ;
struct fd {int real_fd; TYPE_1__ socket; TYPE_2__ stat; } ;
typedef int fd_t ;


 int AF_LOCAL_ ;
 int SOCKET_TYPE_MASK ;
 int S_IFSOCK ;
 int _ENOMEM ;
 struct fd* adhoc_fd_create (int *) ;
 int cond_init (int *) ;
 int f_install (struct fd*,int) ;
 int list_init (int *) ;
 int socket_fdops ;

__attribute__((used)) static fd_t sock_fd_create(int sock_fd, int domain, int type, int protocol) {
    struct fd *fd = adhoc_fd_create(&socket_fdops);
    if (fd == ((void*)0))
        return _ENOMEM;
    fd->stat.mode = S_IFSOCK | 0666;
    fd->real_fd = sock_fd;
    fd->socket.domain = domain;
    fd->socket.type = type & SOCKET_TYPE_MASK;
    fd->socket.protocol = protocol;
    if (domain == AF_LOCAL_) {
        cond_init(&fd->socket.unix_got_peer);
        list_init(&fd->socket.unix_scm);
    }
    return f_install(fd, type & ~SOCKET_TYPE_MASK);
}
