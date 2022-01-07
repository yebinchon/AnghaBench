
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int of_iomap (struct device_node*,int ) ;
 int panic (char*) ;
 int sirfsoc_memc_base ;

__attribute__((used)) static int sirfsoc_memc_probe(struct platform_device *op)
{
 struct device_node *np = op->dev.of_node;

 sirfsoc_memc_base = of_iomap(np, 0);
 if (!sirfsoc_memc_base)
  panic("unable to map memc registers\n");

 return 0;
}
