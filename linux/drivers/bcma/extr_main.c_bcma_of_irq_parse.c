
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_phandle_args {int args_count; int* args; int np; } ;
struct device {int of_node; } ;
struct TYPE_2__ {scalar_t__ of_node; } ;
struct bcma_device {int addr; TYPE_1__ dev; } ;
typedef int __be32 ;


 int cpu_to_be32 (int ) ;
 int of_irq_parse_one (scalar_t__,int,struct of_phandle_args*) ;
 int of_irq_parse_raw (int *,struct of_phandle_args*) ;

__attribute__((used)) static int bcma_of_irq_parse(struct device *parent,
        struct bcma_device *core,
        struct of_phandle_args *out_irq, int num)
{
 __be32 laddr[1];
 int rc;

 if (core->dev.of_node) {
  rc = of_irq_parse_one(core->dev.of_node, num, out_irq);
  if (!rc)
   return rc;
 }

 out_irq->np = parent->of_node;
 out_irq->args_count = 1;
 out_irq->args[0] = num;

 laddr[0] = cpu_to_be32(core->addr);
 return of_irq_parse_raw(laddr, out_irq);
}
