
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct nbd_sock {int fallback_index; int dead; scalar_t__ cookie; scalar_t__ sent; int * pending; struct socket* sock; int tx_lock; } ;
struct nbd_device {scalar_t__ task_setup; int disk; struct nbd_config* config; } ;
struct nbd_config {int num_connections; int live_connections; struct nbd_sock** socks; int runtime_flags; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NBD_RT_BOUND ;
 int atomic_inc (int *) ;
 scalar_t__ current ;
 int dev_err (int ,char*) ;
 int disk_to_dev (int ) ;
 struct nbd_sock** krealloc (struct nbd_sock**,int,int ) ;
 struct nbd_sock* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 struct socket* nbd_get_socket (struct nbd_device*,unsigned long,int*) ;
 int sockfd_put (struct socket*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int nbd_add_socket(struct nbd_device *nbd, unsigned long arg,
     bool netlink)
{
 struct nbd_config *config = nbd->config;
 struct socket *sock;
 struct nbd_sock **socks;
 struct nbd_sock *nsock;
 int err;

 sock = nbd_get_socket(nbd, arg, &err);
 if (!sock)
  return err;

 if (!netlink && !nbd->task_setup &&
     !test_bit(NBD_RT_BOUND, &config->runtime_flags))
  nbd->task_setup = current;

 if (!netlink &&
     (nbd->task_setup != current ||
      test_bit(NBD_RT_BOUND, &config->runtime_flags))) {
  dev_err(disk_to_dev(nbd->disk),
   "Device being setup by another task");
  sockfd_put(sock);
  return -EBUSY;
 }

 socks = krealloc(config->socks, (config->num_connections + 1) *
    sizeof(struct nbd_sock *), GFP_KERNEL);
 if (!socks) {
  sockfd_put(sock);
  return -ENOMEM;
 }
 nsock = kzalloc(sizeof(struct nbd_sock), GFP_KERNEL);
 if (!nsock) {
  sockfd_put(sock);
  return -ENOMEM;
 }

 config->socks = socks;

 nsock->fallback_index = -1;
 nsock->dead = 0;
 mutex_init(&nsock->tx_lock);
 nsock->sock = sock;
 nsock->pending = ((void*)0);
 nsock->sent = 0;
 nsock->cookie = 0;
 socks[config->num_connections++] = nsock;
 atomic_inc(&config->live_connections);

 return 0;
}
