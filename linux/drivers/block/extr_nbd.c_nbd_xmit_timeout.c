
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int timeout; } ;
struct nbd_sock {scalar_t__ cookie; int tx_lock; } ;
struct TYPE_2__ {int timeout; } ;
struct nbd_device {TYPE_1__ tag_set; struct nbd_config* config; int config_refs; } ;
struct nbd_config {int num_connections; int runtime_flags; struct nbd_sock** socks; int live_connections; } ;
struct nbd_cmd {int index; scalar_t__ cookie; int retries; int lock; int status; struct nbd_device* nbd; } ;
typedef enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;


 int BLK_EH_DONE ;
 int BLK_EH_RESET_TIMER ;
 int BLK_STS_IOERR ;
 int BLK_STS_TIMEOUT ;
 int HZ ;
 int NBD_RT_TIMEDOUT ;
 int atomic_read (int *) ;
 int blk_mq_complete_request (struct request*) ;
 struct nbd_cmd* blk_mq_rq_to_pdu (struct request*) ;
 int blk_rq_bytes (struct request*) ;
 scalar_t__ blk_rq_pos (struct request*) ;
 int dev_err_ratelimited (int ,char*,...) ;
 int dev_info (int ,char*,struct request*,int ,unsigned long long,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int nbd_config_put (struct nbd_device*) ;
 int nbd_mark_nsock_dead (struct nbd_device*,struct nbd_sock*,int) ;
 int nbd_requeue_cmd (struct nbd_cmd*) ;
 int nbd_to_dev (struct nbd_device*) ;
 int nbdcmd_to_ascii (int ) ;
 int refcount_inc_not_zero (int *) ;
 int req_to_nbd_cmd_type (struct request*) ;
 int set_bit (int ,int *) ;
 int sock_shutdown (struct nbd_device*) ;

__attribute__((used)) static enum blk_eh_timer_return nbd_xmit_timeout(struct request *req,
       bool reserved)
{
 struct nbd_cmd *cmd = blk_mq_rq_to_pdu(req);
 struct nbd_device *nbd = cmd->nbd;
 struct nbd_config *config;

 if (!mutex_trylock(&cmd->lock))
  return BLK_EH_RESET_TIMER;

 if (!refcount_inc_not_zero(&nbd->config_refs)) {
  cmd->status = BLK_STS_TIMEOUT;
  mutex_unlock(&cmd->lock);
  goto done;
 }
 config = nbd->config;

 if (config->num_connections > 1) {
  dev_err_ratelimited(nbd_to_dev(nbd),
        "Connection timed out, retrying (%d/%d alive)\n",
        atomic_read(&config->live_connections),
        config->num_connections);




  if (config->socks && config->num_connections > 1) {
   if (cmd->index < config->num_connections) {
    struct nbd_sock *nsock =
     config->socks[cmd->index];
    mutex_lock(&nsock->tx_lock);






    if (cmd->cookie == nsock->cookie)
     nbd_mark_nsock_dead(nbd, nsock, 1);
    mutex_unlock(&nsock->tx_lock);
   }
   mutex_unlock(&cmd->lock);
   nbd_requeue_cmd(cmd);
   nbd_config_put(nbd);
   return BLK_EH_DONE;
  }
 }

 if (!nbd->tag_set.timeout) {




  cmd->retries++;
  dev_info(nbd_to_dev(nbd), "Possible stuck request %p: control (%s@%llu,%uB). Runtime %u seconds\n",
   req, nbdcmd_to_ascii(req_to_nbd_cmd_type(req)),
   (unsigned long long)blk_rq_pos(req) << 9,
   blk_rq_bytes(req), (req->timeout / HZ) * cmd->retries);

  mutex_unlock(&cmd->lock);
  nbd_config_put(nbd);
  return BLK_EH_RESET_TIMER;
 }

 dev_err_ratelimited(nbd_to_dev(nbd), "Connection timed out\n");
 set_bit(NBD_RT_TIMEDOUT, &config->runtime_flags);
 cmd->status = BLK_STS_IOERR;
 mutex_unlock(&cmd->lock);
 sock_shutdown(nbd);
 nbd_config_put(nbd);
done:
 blk_mq_complete_request(req);
 return BLK_EH_DONE;
}
