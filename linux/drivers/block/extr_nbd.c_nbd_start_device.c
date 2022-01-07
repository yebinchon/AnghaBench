
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct recv_thread_args {int index; int work; struct nbd_device* nbd; } ;
struct TYPE_8__ {scalar_t__ timeout; } ;
struct nbd_device {int recv_workq; int config_refs; TYPE_4__ tag_set; int disk; scalar_t__ task_recv; int index; struct nbd_config* config; } ;
struct nbd_config {int num_connections; int flags; int recv_threads; TYPE_2__** socks; int runtime_flags; } ;
struct TYPE_7__ {scalar_t__ sk_sndtimeo; } ;
struct TYPE_6__ {TYPE_1__* sock; } ;
struct TYPE_5__ {TYPE_3__* sk; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int NBD_FLAG_CAN_MULTI_CONN ;
 int NBD_RT_HAS_PID_FILE ;
 int WQ_HIGHPRI ;
 int WQ_MEM_RECLAIM ;
 int WQ_UNBOUND ;
 int alloc_workqueue (char*,int,int ,int ) ;
 int atomic_inc (int *) ;
 int blk_mq_update_nr_hw_queues (TYPE_4__*,int) ;
 scalar_t__ current ;
 int dev_err (int ,char*) ;
 int device_create_file (int ,int *) ;
 int disk_to_dev (int ) ;
 struct recv_thread_args* kzalloc (int,int ) ;
 int nbd_dev_dbg_init (struct nbd_device*) ;
 int nbd_parse_flags (struct nbd_device*) ;
 int nbd_size_update (struct nbd_device*) ;
 int pid_attr ;
 int queue_work (int ,int *) ;
 int recv_work ;
 int refcount_inc (int *) ;
 int set_bit (int ,int *) ;
 int sk_set_memalloc (TYPE_3__*) ;
 int sock_shutdown (struct nbd_device*) ;

__attribute__((used)) static int nbd_start_device(struct nbd_device *nbd)
{
 struct nbd_config *config = nbd->config;
 int num_connections = config->num_connections;
 int error = 0, i;

 if (nbd->task_recv)
  return -EBUSY;
 if (!config->socks)
  return -EINVAL;
 if (num_connections > 1 &&
     !(config->flags & NBD_FLAG_CAN_MULTI_CONN)) {
  dev_err(disk_to_dev(nbd->disk), "server does not support multiple connections per device.\n");
  return -EINVAL;
 }

 nbd->recv_workq = alloc_workqueue("knbd%d-recv",
       WQ_MEM_RECLAIM | WQ_HIGHPRI |
       WQ_UNBOUND, 0, nbd->index);
 if (!nbd->recv_workq) {
  dev_err(disk_to_dev(nbd->disk), "Could not allocate knbd recv work queue.\n");
  return -ENOMEM;
 }

 blk_mq_update_nr_hw_queues(&nbd->tag_set, config->num_connections);
 nbd->task_recv = current;

 nbd_parse_flags(nbd);

 error = device_create_file(disk_to_dev(nbd->disk), &pid_attr);
 if (error) {
  dev_err(disk_to_dev(nbd->disk), "device_create_file failed!\n");
  return error;
 }
 set_bit(NBD_RT_HAS_PID_FILE, &config->runtime_flags);

 nbd_dev_dbg_init(nbd);
 for (i = 0; i < num_connections; i++) {
  struct recv_thread_args *args;

  args = kzalloc(sizeof(*args), GFP_KERNEL);
  if (!args) {
   sock_shutdown(nbd);
   return -ENOMEM;
  }
  sk_set_memalloc(config->socks[i]->sock->sk);
  if (nbd->tag_set.timeout)
   config->socks[i]->sock->sk->sk_sndtimeo =
    nbd->tag_set.timeout;
  atomic_inc(&config->recv_threads);
  refcount_inc(&nbd->config_refs);
  INIT_WORK(&args->work, recv_work);
  args->nbd = nbd;
  args->index = i;
  queue_work(nbd->recv_workq, &args->work);
 }
 nbd_size_update(nbd);
 return error;
}
