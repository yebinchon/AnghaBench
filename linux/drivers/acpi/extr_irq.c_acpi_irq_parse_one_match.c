
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct fwnode_handle {int dummy; } ;
struct acpi_irq_parse_one_ctx {TYPE_1__* fwspec; int * res_flags; scalar_t__ rc; } ;
struct TYPE_2__ {int param_count; int * param; struct fwnode_handle* fwnode; } ;


 int acpi_dev_get_irq_type (int ,int ) ;
 int acpi_dev_irq_flags (int ,int ,int ) ;

__attribute__((used)) static inline void acpi_irq_parse_one_match(struct fwnode_handle *fwnode,
         u32 hwirq, u8 triggering,
         u8 polarity, u8 shareable,
         struct acpi_irq_parse_one_ctx *ctx)
{
 if (!fwnode)
  return;
 ctx->rc = 0;
 *ctx->res_flags = acpi_dev_irq_flags(triggering, polarity, shareable);
 ctx->fwspec->fwnode = fwnode;
 ctx->fwspec->param[0] = hwirq;
 ctx->fwspec->param[1] = acpi_dev_get_irq_type(triggering, polarity);
 ctx->fwspec->param_count = 2;
}
