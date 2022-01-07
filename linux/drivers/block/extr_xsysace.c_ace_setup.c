
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u16 ;
struct ace_device {int id; scalar_t__ bus_width; int media_change; scalar_t__ physaddr; int dev; int baseaddr; int tag_set; TYPE_2__* queue; TYPE_1__* gd; scalar_t__ irq; int * reg_ops; int stall_timer; int fsm_tasklet; int rq_list; int id_completion; int lock; } ;
struct TYPE_12__ {struct ace_device* queuedata; } ;
struct TYPE_11__ {int first_minor; TYPE_2__* queue; int disk_name; struct ace_device* private_data; int events; int * fops; int major; } ;


 int ACE_BUSMODE ;
 scalar_t__ ACE_BUS_WIDTH_16 ;
 int ACE_CTRL ;
 int ACE_CTRL_DATABUFRDYIRQ ;
 int ACE_CTRL_ERRORIRQ ;
 int ACE_CTRL_FORCECFGMODE ;
 int ACE_NUM_MINORS ;
 int ACE_VERSION ;
 int BLK_BOUNCE_HIGH ;
 int BLK_MQ_F_SHOULD_MERGE ;
 int DISK_EVENT_MEDIA_CHANGE ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int PTR_ERR (TYPE_2__*) ;
 int ace_fops ;
 int ace_fsm_tasklet ;
 int ace_in (struct ace_device*,int ) ;
 int ace_in_le16 (struct ace_device*,int ) ;
 int ace_interrupt ;
 int ace_major ;
 int ace_mq_ops ;
 int ace_out (struct ace_device*,int ,int) ;
 int ace_out_8 (struct ace_device*,int ,int) ;
 int ace_out_le16 (struct ace_device*,int ,int) ;
 int ace_reg_8_ops ;
 int ace_reg_be16_ops ;
 int ace_reg_le16_ops ;
 int ace_revalidate_disk (TYPE_1__*) ;
 int ace_stall_timer ;
 int add_disk (TYPE_1__*) ;
 TYPE_1__* alloc_disk (int) ;
 int blk_cleanup_queue (TYPE_2__*) ;
 int blk_mq_free_tag_set (int *) ;
 TYPE_2__* blk_mq_init_sq_queue (int *,int *,int,int ) ;
 int blk_queue_bounce_limit (TYPE_2__*,int ) ;
 int blk_queue_logical_block_size (TYPE_2__*,int) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,unsigned long long,...) ;
 int init_completion (int *) ;
 int ioremap (scalar_t__,int) ;
 int iounmap (int ) ;
 int put_disk (TYPE_1__*) ;
 int request_irq (scalar_t__,int ,int ,char*,struct ace_device*) ;
 int snprintf (int ,int,char*,char) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int ace_setup(struct ace_device *ace)
{
 u16 version;
 u16 val;
 int rc;

 dev_dbg(ace->dev, "ace_setup(ace=0x%p)\n", ace);
 dev_dbg(ace->dev, "physaddr=0x%llx irq=%i\n",
  (unsigned long long)ace->physaddr, ace->irq);

 spin_lock_init(&ace->lock);
 init_completion(&ace->id_completion);
 INIT_LIST_HEAD(&ace->rq_list);




 ace->baseaddr = ioremap(ace->physaddr, 0x80);
 if (!ace->baseaddr)
  goto err_ioremap;




 tasklet_init(&ace->fsm_tasklet, ace_fsm_tasklet, (unsigned long)ace);
 timer_setup(&ace->stall_timer, ace_stall_timer, 0);




 ace->queue = blk_mq_init_sq_queue(&ace->tag_set, &ace_mq_ops, 2,
      BLK_MQ_F_SHOULD_MERGE);
 if (IS_ERR(ace->queue)) {
  rc = PTR_ERR(ace->queue);
  ace->queue = ((void*)0);
  goto err_blk_initq;
 }
 ace->queue->queuedata = ace;

 blk_queue_logical_block_size(ace->queue, 512);
 blk_queue_bounce_limit(ace->queue, BLK_BOUNCE_HIGH);




 ace->gd = alloc_disk(ACE_NUM_MINORS);
 if (!ace->gd)
  goto err_alloc_disk;

 ace->gd->major = ace_major;
 ace->gd->first_minor = ace->id * ACE_NUM_MINORS;
 ace->gd->fops = &ace_fops;
 ace->gd->events = DISK_EVENT_MEDIA_CHANGE;
 ace->gd->queue = ace->queue;
 ace->gd->private_data = ace;
 snprintf(ace->gd->disk_name, 32, "xs%c", ace->id + 'a');


 if (ace->bus_width == ACE_BUS_WIDTH_16) {

  ace_out_le16(ace, ACE_BUSMODE, 0x0101);


  if (ace_in_le16(ace, ACE_BUSMODE) == 0x0001)
   ace->reg_ops = &ace_reg_le16_ops;
  else
   ace->reg_ops = &ace_reg_be16_ops;
 } else {
  ace_out_8(ace, ACE_BUSMODE, 0x00);
  ace->reg_ops = &ace_reg_8_ops;
 }


 version = ace_in(ace, ACE_VERSION);
 if ((version == 0) || (version == 0xFFFF))
  goto err_read;


 ace_out(ace, ACE_CTRL, ACE_CTRL_FORCECFGMODE |
  ACE_CTRL_DATABUFRDYIRQ | ACE_CTRL_ERRORIRQ);


 if (ace->irq) {
  rc = request_irq(ace->irq, ace_interrupt, 0, "systemace", ace);
  if (rc) {

   dev_err(ace->dev, "request_irq failed\n");
   ace->irq = 0;
  }
 }


 val = ace_in(ace, ACE_CTRL);
 val |= ACE_CTRL_DATABUFRDYIRQ | ACE_CTRL_ERRORIRQ;
 ace_out(ace, ACE_CTRL, val);


 dev_info(ace->dev, "Xilinx SystemACE revision %i.%i.%i\n",
   (version >> 12) & 0xf, (version >> 8) & 0x0f, version & 0xff);
 dev_dbg(ace->dev, "physaddr 0x%llx, mapped to 0x%p, irq=%i\n",
  (unsigned long long) ace->physaddr, ace->baseaddr, ace->irq);

 ace->media_change = 1;
 ace_revalidate_disk(ace->gd);


 add_disk(ace->gd);

 return 0;

err_read:

 ace->gd->queue = ((void*)0);
 put_disk(ace->gd);
err_alloc_disk:
 blk_cleanup_queue(ace->queue);
 blk_mq_free_tag_set(&ace->tag_set);
err_blk_initq:
 iounmap(ace->baseaddr);
err_ioremap:
 dev_info(ace->dev, "xsysace: error initializing device at 0x%llx\n",
   (unsigned long long) ace->physaddr);
 return -ENOMEM;
}
