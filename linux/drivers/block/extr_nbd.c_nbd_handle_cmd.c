
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct nbd_sock {int tx_lock; struct request* pending; scalar_t__ dead; } ;
struct nbd_device {int disk; struct nbd_config* config; int config_refs; } ;
struct nbd_config {int num_connections; struct nbd_sock** socks; } ;
struct nbd_cmd {int status; struct nbd_device* nbd; } ;


 int BLK_STS_OK ;
 int EAGAIN ;
 int EINVAL ;
 int EIO ;
 struct request* blk_mq_rq_from_pdu (struct nbd_cmd*) ;
 int blk_mq_start_request (struct request*) ;
 int dev_err_ratelimited (int ,char*) ;
 int disk_to_dev (int ) ;
 int find_fallback (struct nbd_device*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nbd_config_put (struct nbd_device*) ;
 int nbd_mark_nsock_dead (struct nbd_device*,struct nbd_sock*,int) ;
 int nbd_requeue_cmd (struct nbd_cmd*) ;
 int nbd_send_cmd (struct nbd_device*,struct nbd_cmd*,int) ;
 int refcount_inc_not_zero (int *) ;
 int sock_shutdown (struct nbd_device*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ wait_for_reconnect (struct nbd_device*) ;

__attribute__((used)) static int nbd_handle_cmd(struct nbd_cmd *cmd, int index)
{
 struct request *req = blk_mq_rq_from_pdu(cmd);
 struct nbd_device *nbd = cmd->nbd;
 struct nbd_config *config;
 struct nbd_sock *nsock;
 int ret;

 if (!refcount_inc_not_zero(&nbd->config_refs)) {
  dev_err_ratelimited(disk_to_dev(nbd->disk),
        "Socks array is empty\n");
  blk_mq_start_request(req);
  return -EINVAL;
 }
 config = nbd->config;

 if (index >= config->num_connections) {
  dev_err_ratelimited(disk_to_dev(nbd->disk),
        "Attempted send on invalid socket\n");
  nbd_config_put(nbd);
  blk_mq_start_request(req);
  return -EINVAL;
 }
 cmd->status = BLK_STS_OK;
again:
 nsock = config->socks[index];
 mutex_lock(&nsock->tx_lock);
 if (nsock->dead) {
  int old_index = index;
  index = find_fallback(nbd, index);
  mutex_unlock(&nsock->tx_lock);
  if (index < 0) {
   if (wait_for_reconnect(nbd)) {
    index = old_index;
    goto again;
   }






   sock_shutdown(nbd);
   nbd_config_put(nbd);
   blk_mq_start_request(req);
   return -EIO;
  }
  goto again;
 }






 blk_mq_start_request(req);
 if (unlikely(nsock->pending && nsock->pending != req)) {
  nbd_requeue_cmd(cmd);
  ret = 0;
  goto out;
 }




 ret = nbd_send_cmd(nbd, cmd, index);
 if (ret == -EAGAIN) {
  dev_err_ratelimited(disk_to_dev(nbd->disk),
        "Request send failed, requeueing\n");
  nbd_mark_nsock_dead(nbd, nsock, 1);
  nbd_requeue_cmd(cmd);
  ret = 0;
 }
out:
 mutex_unlock(&nsock->tx_lock);
 nbd_config_put(nbd);
 return ret;
}
