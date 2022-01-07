
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct mtip_port {int dummy; } ;
struct driver_data {scalar_t__ product_type; int slot_groups; TYPE_3__* port; TYPE_2__* pdev; scalar_t__ mmio; int dd_flag; int isr_binding; scalar_t__ unal_qdepth; TYPE_1__* work; int numa_node; } ;
struct TYPE_11__ {int svc_wait; scalar_t__ mmio; scalar_t__* completed; scalar_t__* cmd_issue; scalar_t__* s_active; struct driver_data* dd; int * cmd_issue_lock; int cmd_slot_unal; } ;
struct TYPE_10__ {int irq; int dev; } ;
struct TYPE_9__ {TYPE_3__* port; } ;


 int EFAULT ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ HOST_CAP ;
 int HOST_CAP_NZDMA ;
 scalar_t__ HOST_CTL ;
 int HOST_IRQ_EN ;
 scalar_t__ HOST_IRQ_STAT ;
 int IRQF_SHARED ;
 size_t MTIP_ABAR ;
 int MTIP_DDF_REMOVE_PENDING_BIT ;
 int MTIP_MAX_SLOT_GROUPS ;
 scalar_t__ MTIP_MAX_UNALIGNED_SLOTS ;
 scalar_t__ MTIP_PRODUCT_UNKNOWN ;
 scalar_t__ PORT_COMMAND_ISSUE ;
 scalar_t__ PORT_OFFSET ;
 scalar_t__ PORT_SCR_ACT ;
 scalar_t__ PORT_SCR_STAT ;
 scalar_t__ PORT_SDBV ;
 int atomic_set (int *,scalar_t__) ;
 int dev_driver_string (int *) ;
 int dev_err (int *,char*,...) ;
 int dev_warn (int *,char*,int ) ;
 int free_irq (int ,struct driver_data*) ;
 int * get_cpu_mask (int ) ;
 int hba_setup (struct driver_data*) ;
 int init_waitqueue_head (int *) ;
 int irq_set_affinity_hint (int ,int *) ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 int kfree (TYPE_3__*) ;
 TYPE_3__* kzalloc_node (int,int ,int ) ;
 int mdelay (int) ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ mtip_check_surprise_removal (TYPE_2__*) ;
 int mtip_deinit_port (TYPE_3__*) ;
 int mtip_detect_product (struct driver_data*) ;
 scalar_t__ mtip_device_unaligned_constrained (struct driver_data*) ;
 int mtip_dma_alloc (struct driver_data*) ;
 int mtip_dma_free (struct driver_data*) ;
 scalar_t__ mtip_hba_reset (struct driver_data*) ;
 int mtip_init_port (TYPE_3__*) ;
 int mtip_irq_handler ;
 int mtip_start_port (TYPE_3__*) ;
 scalar_t__* pcim_iomap_table (TYPE_2__*) ;
 int readl (scalar_t__) ;
 int request_irq (int ,int ,int ,int ,struct driver_data*) ;
 int spin_lock_init (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 scalar_t__ unlikely (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mtip_hw_init(struct driver_data *dd)
{
 int i;
 int rv;
 unsigned long timeout, timetaken;

 dd->mmio = pcim_iomap_table(dd->pdev)[MTIP_ABAR];

 mtip_detect_product(dd);
 if (dd->product_type == MTIP_PRODUCT_UNKNOWN) {
  rv = -EIO;
  goto out1;
 }

 hba_setup(dd);

 dd->port = kzalloc_node(sizeof(struct mtip_port), GFP_KERNEL,
    dd->numa_node);
 if (!dd->port) {
  dev_err(&dd->pdev->dev,
   "Memory allocation: port structure\n");
  return -ENOMEM;
 }


 for (i = 0; i < MTIP_MAX_SLOT_GROUPS; i++)
  dd->work[i].port = dd->port;


 if (mtip_device_unaligned_constrained(dd))
  dd->unal_qdepth = MTIP_MAX_UNALIGNED_SLOTS;
 else
  dd->unal_qdepth = 0;

 atomic_set(&dd->port->cmd_slot_unal, dd->unal_qdepth);


 for (i = 0; i < MTIP_MAX_SLOT_GROUPS; i++)
  spin_lock_init(&dd->port->cmd_issue_lock[i]);


 dd->port->mmio = dd->mmio + PORT_OFFSET;
 dd->port->dd = dd;


 rv = mtip_dma_alloc(dd);
 if (rv < 0)
  goto out1;


 for (i = 0; i < dd->slot_groups; i++) {
  dd->port->s_active[i] =
   dd->port->mmio + i*0x80 + PORT_SCR_ACT;
  dd->port->cmd_issue[i] =
   dd->port->mmio + i*0x80 + PORT_COMMAND_ISSUE;
  dd->port->completed[i] =
   dd->port->mmio + i*0x80 + PORT_SDBV;
 }

 timetaken = jiffies;
 timeout = jiffies + msecs_to_jiffies(30000);
 while (((readl(dd->port->mmio + PORT_SCR_STAT) & 0x0F) != 0x03) &&
   time_before(jiffies, timeout)) {
  mdelay(100);
 }
 if (unlikely(mtip_check_surprise_removal(dd->pdev))) {
  timetaken = jiffies - timetaken;
  dev_warn(&dd->pdev->dev,
   "Surprise removal detected at %u ms\n",
   jiffies_to_msecs(timetaken));
  rv = -ENODEV;
  goto out2 ;
 }
 if (unlikely(test_bit(MTIP_DDF_REMOVE_PENDING_BIT, &dd->dd_flag))) {
  timetaken = jiffies - timetaken;
  dev_warn(&dd->pdev->dev,
   "Removal detected at %u ms\n",
   jiffies_to_msecs(timetaken));
  rv = -EFAULT;
  goto out2;
 }


 if (!(readl(dd->mmio + HOST_CAP) & HOST_CAP_NZDMA)) {
  if (mtip_hba_reset(dd) < 0) {
   dev_err(&dd->pdev->dev,
    "Card did not reset within timeout\n");
   rv = -EIO;
   goto out2;
  }
 } else {

  writel(readl(dd->mmio + HOST_IRQ_STAT),
   dd->mmio + HOST_IRQ_STAT);
 }

 mtip_init_port(dd->port);
 mtip_start_port(dd->port);


 rv = request_irq(dd->pdev->irq, mtip_irq_handler, IRQF_SHARED,
    dev_driver_string(&dd->pdev->dev), dd);
 if (rv) {
  dev_err(&dd->pdev->dev,
   "Unable to allocate IRQ %d\n", dd->pdev->irq);
  goto out2;
 }
 irq_set_affinity_hint(dd->pdev->irq, get_cpu_mask(dd->isr_binding));


 writel(readl(dd->mmio + HOST_CTL) | HOST_IRQ_EN,
     dd->mmio + HOST_CTL);

 init_waitqueue_head(&dd->port->svc_wait);

 if (test_bit(MTIP_DDF_REMOVE_PENDING_BIT, &dd->dd_flag)) {
  rv = -EFAULT;
  goto out3;
 }

 return rv;

out3:

 writel(readl(dd->mmio + HOST_CTL) & ~HOST_IRQ_EN,
   dd->mmio + HOST_CTL);


 irq_set_affinity_hint(dd->pdev->irq, ((void*)0));
 free_irq(dd->pdev->irq, dd);

out2:
 mtip_deinit_port(dd->port);
 mtip_dma_free(dd);

out1:

 kfree(dd->port);

 return rv;
}
