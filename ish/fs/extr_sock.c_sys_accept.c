
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ domain; int unix_got_peer; struct fd* unix_peer; int unix_cred; int protocol; int type; } ;
struct fd {TYPE_1__ socket; int real_fd; } ;
typedef int ssize_t ;
typedef int sockaddr ;
typedef int peer ;
typedef int int_t ;
typedef scalar_t__ fd_t ;
typedef int dword_t ;
typedef scalar_t__ addr_t ;


 scalar_t__ AF_LOCAL_ ;
 scalar_t__ EINTR ;
 int STRACE (char*,scalar_t__,scalar_t__,scalar_t__) ;
 int _EBADF ;
 int _EFAULT ;
 int accept (int ,void*,int*) ;
 int close (int) ;
 scalar_t__ errno ;
 int errno_map () ;
 struct fd* f_get (scalar_t__) ;
 int fill_cred (int *) ;
 int lock (int *) ;
 int notify (int *) ;
 int peer_lock ;
 int read (int,struct fd**,int) ;
 scalar_t__ sock_fd_create (int,scalar_t__,int ,int ) ;
 struct fd* sock_getfd (scalar_t__) ;
 int sockaddr_write (scalar_t__,char*,int,int*) ;
 int sockrestart_begin_listen_wait (struct fd*) ;
 int sockrestart_end_listen_wait (struct fd*) ;
 scalar_t__ sockrestart_should_restart_listen_wait () ;
 int unlock (int *) ;
 scalar_t__ user_get (scalar_t__,int) ;
 scalar_t__ user_put (scalar_t__,int) ;

int_t sys_accept(fd_t sock_fd, addr_t sockaddr_addr, addr_t sockaddr_len_addr) {
    STRACE("accept(%d, 0x%x, 0x%x)", sock_fd, sockaddr_addr, sockaddr_len_addr);
    struct fd *sock = sock_getfd(sock_fd);
    if (sock == ((void*)0))
        return _EBADF;
    dword_t sockaddr_len = 0;
    if (sockaddr_addr != 0) {
        if (user_get(sockaddr_len_addr, sockaddr_len))
            return _EFAULT;
    }

    char sockaddr[sockaddr_len];
    int client;
    do {
        sockrestart_begin_listen_wait(sock);
        errno = 0;
        client = accept(sock->real_fd,
                sockaddr_addr != 0 ? (void *) sockaddr : ((void*)0),
                sockaddr_addr != 0 ? &sockaddr_len : ((void*)0));
        sockrestart_end_listen_wait(sock);
    } while (sockrestart_should_restart_listen_wait() && errno == EINTR);
    if (client < 0)
        return errno_map();

    if (sockaddr_addr != 0) {
        int err = sockaddr_write(sockaddr_addr, sockaddr, sizeof(sockaddr), &sockaddr_len);
        if (err < 0)
            return client;
        if (user_put(sockaddr_len_addr, sockaddr_len))
            return _EFAULT;
    }

    fd_t client_f = sock_fd_create(client,
            sock->socket.domain, sock->socket.type, sock->socket.protocol);
    if (client_f < 0)
        close(client);

    if (sock->socket.domain == AF_LOCAL_) {
        lock(&peer_lock);
        struct fd *client_fd = f_get(client_f);
        fill_cred(&client_fd->socket.unix_cred);
        struct fd *peer;
        ssize_t res = read(client, &peer, sizeof(peer));
        if (res == sizeof(peer)) {
            client_fd->socket.unix_peer = peer;
            peer->socket.unix_peer = client_fd;
            notify(&peer->socket.unix_got_peer);
        }
        unlock(&peer_lock);
    }

    return client_f;
}
