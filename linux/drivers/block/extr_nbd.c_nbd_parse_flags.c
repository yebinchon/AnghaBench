
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nbd_device {TYPE_1__* disk; struct nbd_config* config; } ;
struct nbd_config {int flags; } ;
struct TYPE_2__ {int queue; } ;


 int NBD_FLAG_READ_ONLY ;
 int NBD_FLAG_SEND_FLUSH ;
 int NBD_FLAG_SEND_FUA ;
 int NBD_FLAG_SEND_TRIM ;
 int QUEUE_FLAG_DISCARD ;
 int blk_queue_flag_set (int ,int ) ;
 int blk_queue_write_cache (int ,int,int) ;
 int set_disk_ro (TYPE_1__*,int) ;

__attribute__((used)) static void nbd_parse_flags(struct nbd_device *nbd)
{
 struct nbd_config *config = nbd->config;
 if (config->flags & NBD_FLAG_READ_ONLY)
  set_disk_ro(nbd->disk, 1);
 else
  set_disk_ro(nbd->disk, 0);
 if (config->flags & NBD_FLAG_SEND_TRIM)
  blk_queue_flag_set(QUEUE_FLAG_DISCARD, nbd->disk->queue);
 if (config->flags & NBD_FLAG_SEND_FLUSH) {
  if (config->flags & NBD_FLAG_SEND_FUA)
   blk_queue_write_cache(nbd->disk->queue, 1, 1);
  else
   blk_queue_write_cache(nbd->disk->queue, 1, 0);
 }
 else
  blk_queue_write_cache(nbd->disk->queue, 0, 0);
}
