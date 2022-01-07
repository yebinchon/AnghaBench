
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct driver_data {int remove_list; TYPE_2__* work; scalar_t__ isr_workq; int dd_flag; int queue; TYPE_1__* pdev; int irq_workers_active; int bdev; int sr; int online_list; } ;
struct TYPE_4__ {int cpu_binding; } ;
struct TYPE_3__ {int dev; int irq; } ;


 int MTIP_ABAR ;
 int MTIP_DDF_REMOVAL_BIT ;
 int MTIP_DDF_REMOVE_PENDING_BIT ;
 scalar_t__ atomic_read (int *) ;
 int blk_set_queue_dying (int ) ;
 int destroy_workqueue (scalar_t__) ;
 int dev_lock ;
 int dev_warn (int *,char*) ;
 int drop_cpu (int ) ;
 int flush_workqueue (scalar_t__) ;
 int fsync_bdev (int ) ;
 unsigned long jiffies ;
 int kfree (struct driver_data*) ;
 int list_add (int *,int *) ;
 int list_del_init (int *) ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 int mtip_block_remove (struct driver_data*) ;
 int mtip_check_surprise_removal (struct pci_dev*) ;
 int pci_disable_msi (struct pci_dev*) ;
 struct driver_data* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int pcim_iounmap_regions (struct pci_dev*,int) ;
 int removing_list ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int synchronize_irq (int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static void mtip_pci_remove(struct pci_dev *pdev)
{
 struct driver_data *dd = pci_get_drvdata(pdev);
 unsigned long flags, to;

 set_bit(MTIP_DDF_REMOVAL_BIT, &dd->dd_flag);

 spin_lock_irqsave(&dev_lock, flags);
 list_del_init(&dd->online_list);
 list_add(&dd->remove_list, &removing_list);
 spin_unlock_irqrestore(&dev_lock, flags);

 mtip_check_surprise_removal(pdev);
 synchronize_irq(dd->pdev->irq);


 to = jiffies + msecs_to_jiffies(4000);
 do {
  msleep(20);
 } while (atomic_read(&dd->irq_workers_active) != 0 &&
  time_before(jiffies, to));

 if (!dd->sr)
  fsync_bdev(dd->bdev);

 if (atomic_read(&dd->irq_workers_active) != 0) {
  dev_warn(&dd->pdev->dev,
   "Completion workers still active!\n");
 }

 blk_set_queue_dying(dd->queue);
 set_bit(MTIP_DDF_REMOVE_PENDING_BIT, &dd->dd_flag);


 mtip_block_remove(dd);

 if (dd->isr_workq) {
  flush_workqueue(dd->isr_workq);
  destroy_workqueue(dd->isr_workq);
  drop_cpu(dd->work[0].cpu_binding);
  drop_cpu(dd->work[1].cpu_binding);
  drop_cpu(dd->work[2].cpu_binding);
 }

 pci_disable_msi(pdev);

 spin_lock_irqsave(&dev_lock, flags);
 list_del_init(&dd->remove_list);
 spin_unlock_irqrestore(&dev_lock, flags);

 kfree(dd);

 pcim_iounmap_regions(pdev, 1 << MTIP_ABAR);
 pci_set_drvdata(pdev, ((void*)0));
}
