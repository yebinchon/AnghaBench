
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct super_block {TYPE_2__* s_op; } ;
struct request {TYPE_1__* rq_disk; } ;
struct pktcdvd_device {int bdev; int pkt_dev; } ;
struct packet_data {int sector; int frames; TYPE_4__* bio; struct request* rq; } ;
struct block_device {int dummy; } ;
typedef void* sector_t ;
struct TYPE_9__ {int bi_size; void* bi_sector; } ;
struct TYPE_10__ {int bi_vcnt; struct packet_data* bi_private; int bi_end_io; TYPE_3__ bi_iter; } ;
struct TYPE_8__ {scalar_t__ (* relocate_blocks ) (struct super_block*,unsigned long,unsigned long*) ;} ;
struct TYPE_7__ {struct pktcdvd_device* private_data; } ;


 int CD_FRAMESIZE ;
 int REQ_OP_WRITE ;
 struct block_device* bdget (int ) ;
 int bdput (struct block_device*) ;
 int bio_reset (TYPE_4__*) ;
 int bio_set_dev (TYPE_4__*,int ) ;
 int bio_set_op_attrs (TYPE_4__*,int ,int ) ;
 int drop_super (struct super_block*) ;
 struct super_block* get_super (struct block_device*) ;
 int kdev_t_to_nr (int ) ;
 int pkt_end_io_packet_write ;
 scalar_t__ stub1 (struct super_block*,unsigned long,unsigned long*) ;

__attribute__((used)) static int pkt_start_recovery(struct packet_data *pkt)
{




 return 0;
}
