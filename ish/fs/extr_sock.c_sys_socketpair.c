
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct fd* unix_peer; } ;
struct fd {TYPE_1__ socket; } ;
typedef int int_t ;
typedef int dword_t ;
typedef int addr_t ;


 int STRACE (char*,int,int,...) ;
 int _EFAULT ;
 int _EINVAL ;
 int close (int) ;
 int errno_map () ;
 struct fd* f_get (int) ;
 int lock (int *) ;
 int peer_lock ;
 int sock_family_to_real (int ) ;
 int sock_fd_create (int,int ,int ,int ) ;
 int sock_type_to_real (int ,int ) ;
 int socketpair (int ,int ,int ,int*) ;
 int sys_close (int) ;
 int unlock (int *) ;
 scalar_t__ user_put (int ,int*) ;

int_t sys_socketpair(dword_t domain, dword_t type, dword_t protocol, addr_t sockets_addr) {
    STRACE("socketpair(%d, %d, %d, 0x%x)", domain, type, protocol, sockets_addr);
    int real_domain = sock_family_to_real(domain);
    if (real_domain < 0)
        return _EINVAL;
    int real_type = sock_type_to_real(type, protocol);
    if (real_type < 0)
        return _EINVAL;

    int sockets[2];
    int err = socketpair(domain, type, protocol, sockets);
    if (err < 0)
        return errno_map();

    lock(&peer_lock);
    int fake_sockets[2];
    err = fake_sockets[0] = sock_fd_create(sockets[0], domain, type, protocol);
    if (fake_sockets[0] < 0) {
        unlock(&peer_lock);
        goto close_sockets;
    }
    err = fake_sockets[1] = sock_fd_create(sockets[1], domain, type, protocol);
    if (fake_sockets[1] < 0) {
        unlock(&peer_lock);
        goto close_fake_0;
    }
    struct fd *sock1 = f_get(fake_sockets[0]);
    struct fd *sock2 = f_get(fake_sockets[1]);
    sock1->socket.unix_peer = sock2;
    sock2->socket.unix_peer = sock1;
    unlock(&peer_lock);

    err = _EFAULT;
    if (user_put(sockets_addr, fake_sockets))
        goto close_fake_1;

    STRACE(" [%d, %d]", fake_sockets[0], fake_sockets[1]);
    return 0;

close_fake_1:
    sys_close(fake_sockets[1]);
close_fake_0:
    sys_close(fake_sockets[0]);
close_sockets:
    close(sockets[0]);
    close(sockets[1]);
    return err;
}
