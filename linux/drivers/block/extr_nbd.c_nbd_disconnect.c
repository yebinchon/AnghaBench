
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbd_device {int flags; int disk; struct nbd_config* config; } ;
struct nbd_config {int runtime_flags; } ;


 int NBD_DISCONNECT_REQUESTED ;
 int NBD_RT_DISCONNECT_REQUESTED ;
 int dev_info (int ,char*) ;
 int disk_to_dev (int ) ;
 int send_disconnects (struct nbd_device*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int nbd_disconnect(struct nbd_device *nbd)
{
 struct nbd_config *config = nbd->config;

 dev_info(disk_to_dev(nbd->disk), "NBD_DISCONNECT\n");
 set_bit(NBD_RT_DISCONNECT_REQUESTED, &config->runtime_flags);
 set_bit(NBD_DISCONNECT_REQUESTED, &nbd->flags);
 send_disconnects(nbd);
 return 0;
}
