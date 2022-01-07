
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {TYPE_2__* sk; } ;
struct recv_thread_args {int index; int work; struct nbd_device* nbd; } ;
struct nbd_sock {int dead; int fallback_index; int tx_lock; int cookie; struct socket* sock; } ;
struct TYPE_3__ {scalar_t__ timeout; } ;
struct nbd_device {int recv_workq; int config_refs; TYPE_1__ tag_set; struct nbd_config* config; } ;
struct nbd_config {int num_connections; int conn_wait; int live_connections; int runtime_flags; int recv_threads; struct nbd_sock** socks; } ;
struct TYPE_4__ {scalar_t__ sk_sndtimeo; } ;


 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int NBD_RT_DISCONNECTED ;
 int atomic_inc (int *) ;
 int clear_bit (int ,int *) ;
 int kfree (struct recv_thread_args*) ;
 struct recv_thread_args* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct socket* nbd_get_socket (struct nbd_device*,unsigned long,int*) ;
 int queue_work (int ,int *) ;
 int recv_work ;
 int refcount_inc (int *) ;
 int sk_set_memalloc (TYPE_2__*) ;
 int sockfd_put (struct socket*) ;
 int wake_up (int *) ;

__attribute__((used)) static int nbd_reconnect_socket(struct nbd_device *nbd, unsigned long arg)
{
 struct nbd_config *config = nbd->config;
 struct socket *sock, *old;
 struct recv_thread_args *args;
 int i;
 int err;

 sock = nbd_get_socket(nbd, arg, &err);
 if (!sock)
  return err;

 args = kzalloc(sizeof(*args), GFP_KERNEL);
 if (!args) {
  sockfd_put(sock);
  return -ENOMEM;
 }

 for (i = 0; i < config->num_connections; i++) {
  struct nbd_sock *nsock = config->socks[i];

  if (!nsock->dead)
   continue;

  mutex_lock(&nsock->tx_lock);
  if (!nsock->dead) {
   mutex_unlock(&nsock->tx_lock);
   continue;
  }
  sk_set_memalloc(sock->sk);
  if (nbd->tag_set.timeout)
   sock->sk->sk_sndtimeo = nbd->tag_set.timeout;
  atomic_inc(&config->recv_threads);
  refcount_inc(&nbd->config_refs);
  old = nsock->sock;
  nsock->fallback_index = -1;
  nsock->sock = sock;
  nsock->dead = 0;
  INIT_WORK(&args->work, recv_work);
  args->index = i;
  args->nbd = nbd;
  nsock->cookie++;
  mutex_unlock(&nsock->tx_lock);
  sockfd_put(old);

  clear_bit(NBD_RT_DISCONNECTED, &config->runtime_flags);




  queue_work(nbd->recv_workq, &args->work);

  atomic_inc(&config->live_connections);
  wake_up(&config->conn_wait);
  return 0;
 }
 sockfd_put(sock);
 kfree(args);
 return -ENOSPC;
}
