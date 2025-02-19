
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int real_fd; } ;
typedef int sockaddr ;
typedef int int_t ;
typedef int fd_t ;
typedef int dword_t ;
typedef int addr_t ;


 int STRACE (char*,int ,int ,int ) ;
 int _EBADF ;
 int _EFAULT ;
 int errno_map () ;
 int getpeername (int ,void*,int*) ;
 struct fd* sock_getfd (int ) ;
 int sockaddr_write (int ,char*,int,int*) ;
 scalar_t__ user_get (int ,int) ;
 scalar_t__ user_put (int ,int) ;

int_t sys_getpeername(fd_t sock_fd, addr_t sockaddr_addr, addr_t sockaddr_len_addr) {
    STRACE("getpeername(%d, 0x%x, 0x%x)", sock_fd, sockaddr_addr, sockaddr_len_addr);
    struct fd *sock = sock_getfd(sock_fd);
    if (sock == ((void*)0))
        return _EBADF;
    dword_t sockaddr_len;
    if (user_get(sockaddr_len_addr, sockaddr_len))
        return _EFAULT;




    char sockaddr[sockaddr_len];
    int res = getpeername(sock->real_fd, (void *) sockaddr, &sockaddr_len);
    if (res < 0)
        return errno_map();

    int err = sockaddr_write(sockaddr_addr, sockaddr, sizeof(sockaddr), &sockaddr_len);
    if (err < 0)
        return err;
    if (user_put(sockaddr_len_addr, sockaddr_len))
        return _EFAULT;
    return res;
}
