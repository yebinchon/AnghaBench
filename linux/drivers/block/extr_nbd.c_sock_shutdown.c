
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbd_sock {int tx_lock; } ;
struct nbd_device {int disk; struct nbd_config* config; } ;
struct nbd_config {int num_connections; struct nbd_sock** socks; int runtime_flags; } ;


 int NBD_RT_DISCONNECTED ;
 int dev_warn (int ,char*) ;
 int disk_to_dev (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nbd_mark_nsock_dead (struct nbd_device*,struct nbd_sock*,int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void sock_shutdown(struct nbd_device *nbd)
{
 struct nbd_config *config = nbd->config;
 int i;

 if (config->num_connections == 0)
  return;
 if (test_and_set_bit(NBD_RT_DISCONNECTED, &config->runtime_flags))
  return;

 for (i = 0; i < config->num_connections; i++) {
  struct nbd_sock *nsock = config->socks[i];
  mutex_lock(&nsock->tx_lock);
  nbd_mark_nsock_dead(nbd, nsock, 0);
  mutex_unlock(&nsock->tx_lock);
 }
 dev_warn(disk_to_dev(nbd->disk), "shutting down sockets\n");
}
