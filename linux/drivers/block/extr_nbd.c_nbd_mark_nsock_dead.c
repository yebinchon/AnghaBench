
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nbd_sock {int dead; scalar_t__ sent; int * pending; int sock; } ;
struct nbd_device {TYPE_1__* config; int index; } ;
struct link_dead_args {int work; int index; } ;
struct TYPE_2__ {int runtime_flags; int live_connections; } ;


 int GFP_NOIO ;
 int INIT_WORK (int *,int ) ;
 int NBD_RT_DISCONNECTED ;
 int NBD_RT_DISCONNECT_REQUESTED ;
 int SHUT_RDWR ;
 scalar_t__ atomic_dec_return (int *) ;
 int dev_info (int ,char*) ;
 int kernel_sock_shutdown (int ,int ) ;
 struct link_dead_args* kmalloc (int,int ) ;
 int nbd_dead_link_work ;
 int nbd_disconnected (TYPE_1__*) ;
 int nbd_to_dev (struct nbd_device*) ;
 int queue_work (int ,int *) ;
 int set_bit (int ,int *) ;
 int system_wq ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void nbd_mark_nsock_dead(struct nbd_device *nbd, struct nbd_sock *nsock,
    int notify)
{
 if (!nsock->dead && notify && !nbd_disconnected(nbd->config)) {
  struct link_dead_args *args;
  args = kmalloc(sizeof(struct link_dead_args), GFP_NOIO);
  if (args) {
   INIT_WORK(&args->work, nbd_dead_link_work);
   args->index = nbd->index;
   queue_work(system_wq, &args->work);
  }
 }
 if (!nsock->dead) {
  kernel_sock_shutdown(nsock->sock, SHUT_RDWR);
  if (atomic_dec_return(&nbd->config->live_connections) == 0) {
   if (test_and_clear_bit(NBD_RT_DISCONNECT_REQUESTED,
            &nbd->config->runtime_flags)) {
    set_bit(NBD_RT_DISCONNECTED,
     &nbd->config->runtime_flags);
    dev_info(nbd_to_dev(nbd),
     "Disconnected due to user request.\n");
   }
  }
 }
 nsock->dead = 1;
 nsock->pending = ((void*)0);
 nsock->sent = 0;
}
