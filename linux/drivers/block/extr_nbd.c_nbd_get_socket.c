
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* ops; } ;
struct nbd_device {int disk; } ;
struct TYPE_2__ {scalar_t__ shutdown; } ;


 int EINVAL ;
 int dev_err (int ,char*) ;
 int disk_to_dev (int ) ;
 scalar_t__ sock_no_shutdown ;
 struct socket* sockfd_lookup (unsigned long,int*) ;

__attribute__((used)) static struct socket *nbd_get_socket(struct nbd_device *nbd, unsigned long fd,
         int *err)
{
 struct socket *sock;

 *err = 0;
 sock = sockfd_lookup(fd, err);
 if (!sock)
  return ((void*)0);

 if (sock->ops->shutdown == sock_no_shutdown) {
  dev_err(disk_to_dev(nbd->disk), "Unsupported socket: shutdown callout must be supported.\n");
  *err = -EINVAL;
  return ((void*)0);
 }

 return sock;
}
