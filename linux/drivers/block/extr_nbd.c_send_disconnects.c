
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbd_sock {int tx_lock; } ;
struct nbd_request {int type; int magic; } ;
struct nbd_device {int disk; struct nbd_config* config; } ;
struct nbd_config {int num_connections; struct nbd_sock** socks; } ;
struct kvec {int iov_len; struct nbd_request* iov_base; } ;
struct iov_iter {int dummy; } ;
typedef int request ;


 int NBD_CMD_DISC ;
 int NBD_REQUEST_MAGIC ;
 int WRITE ;
 int dev_err (int ,char*,int) ;
 int disk_to_dev (int ) ;
 int htonl (int ) ;
 int iov_iter_kvec (struct iov_iter*,int ,struct kvec*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sock_xmit (struct nbd_device*,int,int,struct iov_iter*,int ,int *) ;

__attribute__((used)) static void send_disconnects(struct nbd_device *nbd)
{
 struct nbd_config *config = nbd->config;
 struct nbd_request request = {
  .magic = htonl(NBD_REQUEST_MAGIC),
  .type = htonl(NBD_CMD_DISC),
 };
 struct kvec iov = {.iov_base = &request, .iov_len = sizeof(request)};
 struct iov_iter from;
 int i, ret;

 for (i = 0; i < config->num_connections; i++) {
  struct nbd_sock *nsock = config->socks[i];

  iov_iter_kvec(&from, WRITE, &iov, 1, sizeof(request));
  mutex_lock(&nsock->tx_lock);
  ret = sock_xmit(nbd, i, 1, &from, 0, ((void*)0));
  if (ret <= 0)
   dev_err(disk_to_dev(nbd->disk),
    "Send disconnect failed %d\n", ret);
  mutex_unlock(&nsock->tx_lock);
 }
}
