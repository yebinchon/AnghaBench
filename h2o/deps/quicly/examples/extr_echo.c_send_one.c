
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct msghdr {int msg_iovlen; struct iovec* msg_iov; int msg_namelen; int * msg_name; } ;
struct iovec {int iov_len; int iov_base; } ;
struct TYPE_6__ {int sa; } ;
struct TYPE_5__ {int len; int base; } ;
struct TYPE_7__ {TYPE_2__ dest; TYPE_1__ data; } ;
typedef TYPE_3__ quicly_datagram_t ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int quicly_get_socklen (int *) ;
 scalar_t__ sendmsg (int,struct msghdr*,int ) ;

__attribute__((used)) static int send_one(int fd, quicly_datagram_t *p)
{
    struct iovec vec = {.iov_base = p->data.base, .iov_len = p->data.len};
    struct msghdr mess = {
        .msg_name = &p->dest.sa, .msg_namelen = quicly_get_socklen(&p->dest.sa), .msg_iov = &vec, .msg_iovlen = 1};
    int ret;

    while ((ret = (int)sendmsg(fd, &mess, 0)) == -1 && errno == EINTR)
        ;
    return ret;
}
