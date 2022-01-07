
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int bio; } ;
struct packet_command {int* cmd; } ;
typedef int blk_status_t ;
struct TYPE_2__ {int pending; int transfer; } ;


 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 int BLK_STS_RESOURCE ;
 int GDROM_BCH_REG ;
 int GDROM_BCL_REG ;
 int GDROM_COM_PACKET ;
 int GDROM_DATA_REG ;
 int GDROM_DEFAULT_TIMEOUT ;
 int GDROM_DMA_DIRECTION_REG ;
 int GDROM_DMA_ENABLE_REG ;
 int GDROM_DMA_LENGTH_REG ;
 int GDROM_DMA_STARTADDR_REG ;
 int GDROM_DMA_STATUS_REG ;
 int GDROM_DSEL_REG ;
 int GDROM_ERROR_REG ;
 int GDROM_HARD_SECTOR ;
 int GDROM_INTSEC_REG ;
 int GDROM_SECNUM_REG ;
 int GDROM_STATUSCOMMAND_REG ;
 int GD_SESSION_OFFSET ;
 int GD_TO_BLK ;
 int GFP_KERNEL ;
 int HZ ;
 scalar_t__ __raw_readb (int ) ;
 int __raw_writeb (int,int ) ;
 int __raw_writel (int,int ) ;
 int bio_data (int ) ;
 int blk_mq_end_request (struct request*,int ) ;
 int blk_rq_pos (struct request*) ;
 int blk_rq_sectors (struct request*) ;
 int cpu_relax () ;
 TYPE_1__ gd ;
 scalar_t__ gdrom_is_busy () ;
 int jiffies ;
 int kfree (struct packet_command*) ;
 struct packet_command* kzalloc (int,int ) ;
 int outsw (int ,int**,int) ;
 int request_queue ;
 scalar_t__ time_before (int,unsigned long) ;
 int virt_to_phys (int ) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static blk_status_t gdrom_readdisk_dma(struct request *req)
{
 int block, block_cnt;
 blk_status_t err;
 struct packet_command *read_command;
 unsigned long timeout;

 read_command = kzalloc(sizeof(struct packet_command), GFP_KERNEL);
 if (!read_command)
  return BLK_STS_RESOURCE;

 read_command->cmd[0] = 0x30;
 read_command->cmd[1] = 0x20;
 block = blk_rq_pos(req)/GD_TO_BLK + GD_SESSION_OFFSET;
 block_cnt = blk_rq_sectors(req)/GD_TO_BLK;
 __raw_writel(virt_to_phys(bio_data(req->bio)), GDROM_DMA_STARTADDR_REG);
 __raw_writel(block_cnt * GDROM_HARD_SECTOR, GDROM_DMA_LENGTH_REG);
 __raw_writel(1, GDROM_DMA_DIRECTION_REG);
 __raw_writel(1, GDROM_DMA_ENABLE_REG);
 read_command->cmd[2] = (block >> 16) & 0xFF;
 read_command->cmd[3] = (block >> 8) & 0xFF;
 read_command->cmd[4] = block & 0xFF;
 read_command->cmd[8] = (block_cnt >> 16) & 0xFF;
 read_command->cmd[9] = (block_cnt >> 8) & 0xFF;
 read_command->cmd[10] = block_cnt & 0xFF;

 __raw_writeb(1, GDROM_ERROR_REG);

 __raw_writeb(0, GDROM_SECNUM_REG);
 __raw_writeb(0, GDROM_BCL_REG);
 __raw_writeb(0, GDROM_BCH_REG);
 __raw_writeb(0, GDROM_DSEL_REG);
 __raw_writeb(0, GDROM_INTSEC_REG);

 timeout = jiffies + HZ / 2;
 while (gdrom_is_busy() && time_before(jiffies, timeout))
  cpu_relax();
 __raw_writeb(GDROM_COM_PACKET, GDROM_STATUSCOMMAND_REG);
 timeout = jiffies + HZ / 2;

 while (gdrom_is_busy() && time_before(jiffies, timeout))
  cpu_relax();
 gd.pending = 1;
 gd.transfer = 1;
 outsw(GDROM_DATA_REG, &read_command->cmd, 6);
 timeout = jiffies + HZ / 2;

 while (__raw_readb(GDROM_DMA_STATUS_REG) &&
  time_before(jiffies, timeout))
  cpu_relax();

 __raw_writeb(1, GDROM_DMA_STATUS_REG);
 wait_event_interruptible_timeout(request_queue,
  gd.transfer == 0, GDROM_DEFAULT_TIMEOUT);
 err = gd.transfer ? BLK_STS_IOERR : BLK_STS_OK;
 gd.transfer = 0;
 gd.pending = 0;

 blk_mq_end_request(req, err);
 kfree(read_command);
 return BLK_STS_OK;
}
