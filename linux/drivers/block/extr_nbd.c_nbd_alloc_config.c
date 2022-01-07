
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbd_config {int live_connections; int blksize; int conn_wait; int recv_wq; int recv_threads; } ;


 int GFP_NOFS ;
 int NBD_DEF_BLKSIZE ;
 int THIS_MODULE ;
 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;
 struct nbd_config* kzalloc (int,int ) ;
 int try_module_get (int ) ;

__attribute__((used)) static struct nbd_config *nbd_alloc_config(void)
{
 struct nbd_config *config;

 config = kzalloc(sizeof(struct nbd_config), GFP_NOFS);
 if (!config)
  return ((void*)0);
 atomic_set(&config->recv_threads, 0);
 init_waitqueue_head(&config->recv_wq);
 init_waitqueue_head(&config->conn_wait);
 config->blksize = NBD_DEF_BLKSIZE;
 atomic_set(&config->live_connections, 0);
 try_module_get(THIS_MODULE);
 return config;
}
