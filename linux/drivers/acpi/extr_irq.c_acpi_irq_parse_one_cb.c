
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fwnode_handle {int dummy; } ;
struct acpi_resource_irq {size_t interrupt_count; int shareable; int polarity; int triggering; int * interrupts; } ;
struct acpi_resource_extended_irq {size_t interrupt_count; int shareable; int polarity; int triggering; int * interrupts; int resource_source; int producer_consumer; } ;
struct TYPE_2__ {struct acpi_resource_extended_irq extended_irq; struct acpi_resource_irq irq; } ;
struct acpi_resource {int type; TYPE_1__ data; } ;
struct acpi_irq_parse_one_ctx {size_t index; } ;
typedef int acpi_status ;


 int ACPI_PRODUCER ;


 int AE_CTRL_TERMINATE ;
 int AE_OK ;
 struct fwnode_handle* acpi_get_irq_source_fwhandle (int *) ;
 struct fwnode_handle* acpi_gsi_domain_id ;
 int acpi_irq_parse_one_match (struct fwnode_handle*,int ,int ,int ,int ,struct acpi_irq_parse_one_ctx*) ;

__attribute__((used)) static acpi_status acpi_irq_parse_one_cb(struct acpi_resource *ares,
      void *context)
{
 struct acpi_irq_parse_one_ctx *ctx = context;
 struct acpi_resource_irq *irq;
 struct acpi_resource_extended_irq *eirq;
 struct fwnode_handle *fwnode;

 switch (ares->type) {
 case 128:
  irq = &ares->data.irq;
  if (ctx->index >= irq->interrupt_count) {
   ctx->index -= irq->interrupt_count;
   return AE_OK;
  }
  fwnode = acpi_gsi_domain_id;
  acpi_irq_parse_one_match(fwnode, irq->interrupts[ctx->index],
      irq->triggering, irq->polarity,
      irq->shareable, ctx);
  return AE_CTRL_TERMINATE;
 case 129:
  eirq = &ares->data.extended_irq;
  if (eirq->producer_consumer == ACPI_PRODUCER)
   return AE_OK;
  if (ctx->index >= eirq->interrupt_count) {
   ctx->index -= eirq->interrupt_count;
   return AE_OK;
  }
  fwnode = acpi_get_irq_source_fwhandle(&eirq->resource_source);
  acpi_irq_parse_one_match(fwnode, eirq->interrupts[ctx->index],
      eirq->triggering, eirq->polarity,
      eirq->shareable, ctx);
  return AE_CTRL_TERMINATE;
 }

 return AE_OK;
}
