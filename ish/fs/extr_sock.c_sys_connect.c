
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint_t ;
struct sockaddr_max_ {int dummy; } ;
struct TYPE_2__ {scalar_t__ domain; int unix_got_peer; int * unix_peer; int unix_cred; } ;
struct fd {TYPE_1__ socket; int real_fd; } ;
typedef int ssize_t ;
typedef int int_t ;
typedef int fd_t ;
typedef int addr_t ;


 scalar_t__ AF_LOCAL_ ;
 int STRACE (char*,int ,int ,int ) ;
 int _EBADF ;
 int assert (int ) ;
 int connect (int ,void*,int ) ;
 int errno_map () ;
 int fill_cred (int *) ;
 int lock (int *) ;
 int peer_lock ;
 struct fd* sock_getfd (int ) ;
 int sockaddr_read (int ,struct sockaddr_max_*,int *) ;
 int unlock (int *) ;
 int wait_for (int *,int *,int *) ;
 int write (int ,struct fd**,int) ;

int_t sys_connect(fd_t sock_fd, addr_t sockaddr_addr, uint_t sockaddr_len) {
    STRACE("connect(%d, 0x%x, %d)", sock_fd, sockaddr_addr, sockaddr_len);
    struct fd *sock = sock_getfd(sock_fd);
    if (sock == ((void*)0))
        return _EBADF;
    struct sockaddr_max_ sockaddr;
    int err = sockaddr_read(sockaddr_addr, &sockaddr, &sockaddr_len);
    if (err < 0)
        return err;

    err = connect(sock->real_fd, (void *) &sockaddr, sockaddr_len);
    if (err < 0)
        return errno_map();

    if (sock->socket.domain == AF_LOCAL_) {
        fill_cred(&sock->socket.unix_cred);
        assert(sock->socket.unix_peer == ((void*)0));

        ssize_t res = write(sock->real_fd, &sock, sizeof(struct fd *));
        if (res == sizeof(struct fd *)) {

            lock(&peer_lock);
            while (sock->socket.unix_peer == ((void*)0))
                wait_for(&sock->socket.unix_got_peer, &peer_lock, ((void*)0));
            unlock(&peer_lock);
        }
    }

    return err;
}
