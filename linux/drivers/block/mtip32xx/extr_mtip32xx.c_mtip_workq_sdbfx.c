
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtip_port {scalar_t__* completed; struct driver_data* dd; } ;
struct mtip_cmd {int dummy; } ;
struct driver_data {scalar_t__ mmio; int irq_workers_active; } ;


 scalar_t__ HOST_IRQ_STAT ;
 int MTIP_TAG_INTERNAL ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ atomic_dec_return (int *) ;
 struct mtip_cmd* mtip_cmd_from_tag (struct driver_data*,int) ;
 int mtip_complete_command (struct mtip_cmd*,int ) ;
 scalar_t__ unlikely (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void mtip_workq_sdbfx(struct mtip_port *port, int group,
       u32 completed)
{
 struct driver_data *dd = port->dd;
 int tag, bit;
 struct mtip_cmd *command;

 if (!completed) {
  WARN_ON_ONCE(!completed);
  return;
 }

 writel(completed, port->completed[group]);


 for (bit = 0; (bit < 32) && completed; bit++) {
  if (completed & 0x01) {
   tag = (group << 5) | bit;


   if (unlikely(tag == MTIP_TAG_INTERNAL))
    continue;

   command = mtip_cmd_from_tag(dd, tag);
   mtip_complete_command(command, 0);
  }
  completed >>= 1;
 }


 if (atomic_dec_return(&dd->irq_workers_active) == 0)
  writel(0xffffffff, dd->mmio + HOST_IRQ_STAT);
}
