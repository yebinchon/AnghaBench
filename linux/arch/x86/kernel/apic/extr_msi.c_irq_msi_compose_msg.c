
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msi_msg {int address_lo; int data; int address_hi; } ;
struct irq_data {int dummy; } ;
struct irq_cfg {int vector; int dest_apicid; } ;
struct TYPE_2__ {scalar_t__ irq_dest_mode; } ;


 int MSI_ADDR_BASE_HI ;
 int MSI_ADDR_BASE_LO ;
 int MSI_ADDR_DEST_ID (int ) ;
 int MSI_ADDR_DEST_MODE_LOGICAL ;
 int MSI_ADDR_DEST_MODE_PHYSICAL ;
 int MSI_ADDR_EXT_DEST_ID (int ) ;
 int MSI_ADDR_REDIRECTION_CPU ;
 int MSI_DATA_DELIVERY_FIXED ;
 int MSI_DATA_LEVEL_ASSERT ;
 int MSI_DATA_TRIGGER_EDGE ;
 int MSI_DATA_VECTOR (int ) ;
 TYPE_1__* apic ;
 struct irq_cfg* irqd_cfg (struct irq_data*) ;
 scalar_t__ x2apic_enabled () ;

__attribute__((used)) static void irq_msi_compose_msg(struct irq_data *data, struct msi_msg *msg)
{
 struct irq_cfg *cfg = irqd_cfg(data);

 msg->address_hi = MSI_ADDR_BASE_HI;

 if (x2apic_enabled())
  msg->address_hi |= MSI_ADDR_EXT_DEST_ID(cfg->dest_apicid);

 msg->address_lo =
  MSI_ADDR_BASE_LO |
  ((apic->irq_dest_mode == 0) ?
   MSI_ADDR_DEST_MODE_PHYSICAL :
   MSI_ADDR_DEST_MODE_LOGICAL) |
  MSI_ADDR_REDIRECTION_CPU |
  MSI_ADDR_DEST_ID(cfg->dest_apicid);

 msg->data =
  MSI_DATA_TRIGGER_EDGE |
  MSI_DATA_LEVEL_ASSERT |
  MSI_DATA_DELIVERY_FIXED |
  MSI_DATA_VECTOR(cfg->vector);
}
