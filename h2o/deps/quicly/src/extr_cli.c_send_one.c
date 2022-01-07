
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct msghdr {int msg_iovlen; struct iovec* msg_iov; int msg_namelen; int * msg_name; } ;
struct iovec {int iov_len; int iov_base; } ;
struct TYPE_6__ {int len; int base; } ;
struct TYPE_5__ {int sa; } ;
struct TYPE_7__ {TYPE_2__ data; TYPE_1__ dest; } ;
typedef TYPE_3__ quicly_datagram_t ;
typedef int mess ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int hexdump (char*,int ,int ) ;
 int memset (struct msghdr*,int ,int) ;
 int quicly_get_socklen (int *) ;
 scalar_t__ sendmsg (int,struct msghdr*,int ) ;
 int verbosity ;

__attribute__((used)) static int send_one(int fd, quicly_datagram_t *p)
{
    int ret;
    struct msghdr mess;
    struct iovec vec;
    memset(&mess, 0, sizeof(mess));
    mess.msg_name = &p->dest.sa;
    mess.msg_namelen = quicly_get_socklen(&p->dest.sa);
    vec.iov_base = p->data.base;
    vec.iov_len = p->data.len;
    mess.msg_iov = &vec;
    mess.msg_iovlen = 1;
    if (verbosity >= 2)
        hexdump("sendmsg", vec.iov_base, vec.iov_len);
    while ((ret = (int)sendmsg(fd, &mess, 0)) == -1 && errno == EINTR)
        ;
    return ret;
}
