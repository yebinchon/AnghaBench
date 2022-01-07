
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int irqreturn_t ;
typedef int hrz_dev ;


 int DBG_BUS ;
 int DBG_FLOW ;
 int DBG_IRQ ;
 int DBG_RX ;
 int DBG_TX ;
 int DBG_WARN ;
 int INTERESTING_INTERRUPTS ;
 int INT_SOURCE_REG_OFF ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PRINTD (int,char*,...) ;
 int RX_BUS_MASTER_COMPLETE ;
 int RX_DATA_AV ;
 int TX_BUS_MASTER_COMPLETE ;
 int rd_regl (int *,int ) ;
 int rx_bus_master_complete_handler (int *) ;
 int rx_data_av_handler (int *) ;
 int tx_bus_master_complete_handler (int *) ;

__attribute__((used)) static irqreturn_t interrupt_handler(int irq, void *dev_id)
{
  hrz_dev *dev = dev_id;
  u32 int_source;
  unsigned int irq_ok;

  PRINTD (DBG_FLOW, "interrupt_handler: %p", dev_id);


  irq_ok = 0;
  while ((int_source = rd_regl (dev, INT_SOURCE_REG_OFF)
   & INTERESTING_INTERRUPTS)) {
    if (int_source & RX_BUS_MASTER_COMPLETE) {
      ++irq_ok;
      PRINTD (DBG_IRQ|DBG_BUS|DBG_RX, "rx_bus_master_complete asserted");
      rx_bus_master_complete_handler (dev);
    }
    if (int_source & TX_BUS_MASTER_COMPLETE) {
      ++irq_ok;
      PRINTD (DBG_IRQ|DBG_BUS|DBG_TX, "tx_bus_master_complete asserted");
      tx_bus_master_complete_handler (dev);
    }
    if (int_source & RX_DATA_AV) {
      ++irq_ok;
      PRINTD (DBG_IRQ|DBG_RX, "rx_data_av asserted");
      rx_data_av_handler (dev);
    }
  }
  if (irq_ok) {
    PRINTD (DBG_IRQ, "work done: %u", irq_ok);
  } else {
    PRINTD (DBG_IRQ|DBG_WARN, "spurious interrupt source: %#x", int_source);
  }

  PRINTD (DBG_IRQ|DBG_FLOW, "interrupt_handler done: %p", dev_id);
  if (irq_ok)
 return IRQ_HANDLED;
  return IRQ_NONE;
}
