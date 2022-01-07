
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint_t ;
struct sockaddr_max_ {int dummy; } ;
struct inode_data {int dummy; } ;
struct TYPE_2__ {struct inode_data* unix_name_inode; int * unix_name_abstract; } ;
struct fd {TYPE_1__ socket; int real_fd; } ;
typedef int int_t ;
typedef int fd_t ;
typedef int addr_t ;


 int STRACE (char*,int ,int ,int ) ;
 int _EBADF ;
 int bind (int ,void*,int ) ;
 int errno_map () ;
 int inode_release_if_exist (struct inode_data*) ;
 struct fd* sock_getfd (int ) ;
 int sockaddr_read_bind (int ,struct sockaddr_max_*,int *,struct fd*) ;
 int unix_abstract_release (int *) ;

int_t sys_bind(fd_t sock_fd, addr_t sockaddr_addr, uint_t sockaddr_len) {
    STRACE("bind(%d, 0x%x, %d)", sock_fd, sockaddr_addr, sockaddr_len);
    struct fd *sock = sock_getfd(sock_fd);
    if (sock == ((void*)0))
        return _EBADF;
    struct sockaddr_max_ sockaddr;
    struct inode_data *inode = ((void*)0);
    int err = sockaddr_read_bind(sockaddr_addr, &sockaddr, &sockaddr_len, sock);
    if (err < 0)
        return err;

    err = bind(sock->real_fd, (void *) &sockaddr, sockaddr_len);
    if (err < 0) {
        inode_release_if_exist(sock->socket.unix_name_inode);
        if (sock->socket.unix_name_abstract != ((void*)0))
            unix_abstract_release(sock->socket.unix_name_abstract);
        return errno_map();
    }
    sock->socket.unix_name_inode = inode;
    return 0;
}
