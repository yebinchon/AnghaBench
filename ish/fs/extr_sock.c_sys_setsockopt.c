
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int real_fd; } ;
typedef int int_t ;
typedef int fd_t ;
typedef int dword_t ;
typedef int addr_t ;


 int ICMP6_FILTER_ ;
 int IPPROTO_ICMPV6 ;
 int IPPROTO_IP ;
 int IP_MTU_DISCOVER_ ;
 int STRACE (char*,int ,int,int,int ,int) ;
 int _EBADF ;
 int _EFAULT ;
 int _EINVAL ;
 int errno_map () ;
 int setsockopt (int ,int,int,char*,int) ;
 struct fd* sock_getfd (int ) ;
 int sock_level_to_real (int) ;
 int sock_opt_to_real (int,int) ;
 scalar_t__ user_read (int ,char*,int) ;

int_t sys_setsockopt(fd_t sock_fd, dword_t level, dword_t option, addr_t value_addr, dword_t value_len) {
    STRACE("setsockopt(%d, %d, %d, 0x%x, %d)", sock_fd, level, option, value_addr, value_len);
    struct fd *sock = sock_getfd(sock_fd);
    if (sock == ((void*)0))
        return _EBADF;
    char value[value_len];
    if (user_read(value_addr, value, value_len))
        return _EFAULT;


    if (level == IPPROTO_ICMPV6 && option == ICMP6_FILTER_)
        return 0;

    if (level == IPPROTO_IP && option == IP_MTU_DISCOVER_)
        return 0;

    int real_opt = sock_opt_to_real(option, level);
    if (real_opt < 0)
        return _EINVAL;
    int real_level = sock_level_to_real(level);
    if (real_level < 0)
        return _EINVAL;



    if (real_opt == 0)
        return 0;

    int err = setsockopt(sock->real_fd, real_level, real_opt, value, value_len);
    if (err < 0)
        return errno_map();
    return 0;
}
