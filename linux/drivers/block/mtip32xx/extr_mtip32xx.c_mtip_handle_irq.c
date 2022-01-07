
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtip_work {int completed; int work; int cpu_binding; } ;
struct mtip_port {scalar_t__* completed; scalar_t__ mmio; } ;
struct driver_data {scalar_t__ mmio; int dd_flag; int pdev; struct mtip_work* work; int isr_workq; int irq_workers_active; struct mtip_port* port; } ;
typedef int irqreturn_t ;


 scalar_t__ HOST_IRQ_STAT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MTIP_DDF_REMOVE_PENDING_BIT ;
 int MTIP_MAX_SLOT_GROUPS ;
 int PORT_IRQ_ERR ;
 int PORT_IRQ_LEGACY ;
 int PORT_IRQ_SDB_FIS ;
 scalar_t__ PORT_IRQ_STAT ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 scalar_t__ likely (int) ;
 int mtip_check_surprise_removal (int ) ;
 int mtip_process_errors (struct driver_data*,int) ;
 int mtip_process_legacy (struct driver_data*,int) ;
 int mtip_workq_sdbfx (struct mtip_port*,int ,int) ;
 int queue_work_on (int ,int ,int *) ;
 void* readl (scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline irqreturn_t mtip_handle_irq(struct driver_data *data)
{
 struct driver_data *dd = (struct driver_data *) data;
 struct mtip_port *port = dd->port;
 u32 hba_stat, port_stat;
 int rv = IRQ_NONE;
 int do_irq_enable = 1, i, workers;
 struct mtip_work *twork;

 hba_stat = readl(dd->mmio + HOST_IRQ_STAT);
 if (hba_stat) {
  rv = IRQ_HANDLED;


  port_stat = readl(port->mmio + PORT_IRQ_STAT);
  if (unlikely(port_stat == 0xFFFFFFFF)) {
   mtip_check_surprise_removal(dd->pdev);
   return IRQ_HANDLED;
  }
  writel(port_stat, port->mmio + PORT_IRQ_STAT);


  if (likely(port_stat & PORT_IRQ_SDB_FIS)) {
   do_irq_enable = 0;
   WARN_ON_ONCE(atomic_read(&dd->irq_workers_active) != 0);


   for (i = 0, workers = 0; i < MTIP_MAX_SLOT_GROUPS;
         i++) {
    twork = &dd->work[i];
    twork->completed = readl(port->completed[i]);
    if (twork->completed)
     workers++;
   }

   atomic_set(&dd->irq_workers_active, workers);
   if (workers) {
    for (i = 1; i < MTIP_MAX_SLOT_GROUPS; i++) {
     twork = &dd->work[i];
     if (twork->completed)
      queue_work_on(
       twork->cpu_binding,
       dd->isr_workq,
       &twork->work);
    }

    if (likely(dd->work[0].completed))
     mtip_workq_sdbfx(port, 0,
       dd->work[0].completed);

   } else {




    do_irq_enable = 1;
   }
  }

  if (unlikely(port_stat & PORT_IRQ_ERR)) {
   if (unlikely(mtip_check_surprise_removal(dd->pdev))) {

    return IRQ_HANDLED;
   }
   if (test_bit(MTIP_DDF_REMOVE_PENDING_BIT,
       &dd->dd_flag))
    return rv;

   mtip_process_errors(dd, port_stat & PORT_IRQ_ERR);
  }

  if (unlikely(port_stat & PORT_IRQ_LEGACY))
   mtip_process_legacy(dd, port_stat & PORT_IRQ_LEGACY);
 }


 if (unlikely(do_irq_enable))
  writel(hba_stat, dd->mmio + HOST_IRQ_STAT);

 return rv;
}
