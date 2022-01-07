
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct intel_mid_wdt_pdata* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct irq_alloc_info {int dummy; } ;
struct intel_mid_wdt_pdata {int irq; } ;


 int EINVAL ;
 int IOAPIC_MAP_ALLOC ;
 int TANGIER_EXT_TIMER0_MSI ;
 int cpu_to_node (int ) ;
 int dev_warn (TYPE_1__*,char*,int) ;
 int ioapic_set_alloc_attr (struct irq_alloc_info*,int ,int,int ) ;
 int mp_map_gsi_to_irq (int,int ,struct irq_alloc_info*) ;

__attribute__((used)) static int tangier_probe(struct platform_device *pdev)
{
 struct irq_alloc_info info;
 struct intel_mid_wdt_pdata *pdata = pdev->dev.platform_data;
 int gsi = TANGIER_EXT_TIMER0_MSI;
 int irq;

 if (!pdata)
  return -EINVAL;


 ioapic_set_alloc_attr(&info, cpu_to_node(0), 1, 0);
 irq = mp_map_gsi_to_irq(gsi, IOAPIC_MAP_ALLOC, &info);
 if (irq < 0) {
  dev_warn(&pdev->dev, "cannot find interrupt %d in ioapic\n", gsi);
  return irq;
 }

 pdata->irq = irq;
 return 0;
}
