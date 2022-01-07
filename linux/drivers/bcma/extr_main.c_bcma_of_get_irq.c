
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int dummy; } ;
struct device {int of_node; } ;
struct bcma_device {int bus; } ;


 int CONFIG_OF_IRQ ;
 int IS_ENABLED (int ) ;
 int bcma_debug (int ,char*,int) ;
 int bcma_of_irq_parse (struct device*,struct bcma_device*,struct of_phandle_args*,int) ;
 unsigned int irq_create_of_mapping (struct of_phandle_args*) ;

__attribute__((used)) static unsigned int bcma_of_get_irq(struct device *parent,
        struct bcma_device *core, int num)
{
 struct of_phandle_args out_irq;
 int ret;

 if (!IS_ENABLED(CONFIG_OF_IRQ) || !parent->of_node)
  return 0;

 ret = bcma_of_irq_parse(parent, core, &out_irq, num);
 if (ret) {
  bcma_debug(core->bus, "bcma_of_get_irq() failed with rc=%d\n",
      ret);
  return 0;
 }

 return irq_create_of_mapping(&out_irq);
}
