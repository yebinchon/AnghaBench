
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int one ;
typedef scalar_t__ int_t ;
typedef scalar_t__ fd_t ;
typedef int dword_t ;


 int AF_INET_ ;
 int IPPROTO_ICMP ;
 int IPPROTO_IP ;
 int IPPROTO_RAW ;
 int IP_STRIPHDR ;
 int SOCK_DGRAM_ ;
 int SOCK_RAW_ ;
 int STRACE (char*,int ,int ,int ) ;
 scalar_t__ _EINVAL ;
 int close (int) ;
 scalar_t__ errno_map () ;
 int setsockopt (int,int ,int ,int*,int) ;
 int sock_family_to_real (int ) ;
 scalar_t__ sock_fd_create (int,int ,int ,int ) ;
 int sock_type_to_real (int ,int ) ;
 int socket (int,int,int ) ;

int_t sys_socket(dword_t domain, dword_t type, dword_t protocol) {
    STRACE("socket(%d, %d, %d)", domain, type, protocol);
    int real_domain = sock_family_to_real(domain);
    if (real_domain < 0)
        return _EINVAL;
    int real_type = sock_type_to_real(type, protocol);
    if (real_type < 0)
        return _EINVAL;


    if (type == SOCK_RAW_ && protocol == IPPROTO_RAW)
        protocol = IPPROTO_ICMP;

    int sock = socket(real_domain, real_type, protocol);
    if (sock < 0)
        return errno_map();
    fd_t f = sock_fd_create(sock, domain, type, protocol);
    if (f < 0)
        close(sock);
    return f;
}
