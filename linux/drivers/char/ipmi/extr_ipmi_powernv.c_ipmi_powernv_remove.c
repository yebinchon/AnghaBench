
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct ipmi_smi_powernv {int irq; int intf; } ;


 struct ipmi_smi_powernv* dev_get_drvdata (int *) ;
 int free_irq (int ,struct ipmi_smi_powernv*) ;
 int ipmi_unregister_smi (int ) ;
 int irq_dispose_mapping (int ) ;

__attribute__((used)) static int ipmi_powernv_remove(struct platform_device *pdev)
{
 struct ipmi_smi_powernv *smi = dev_get_drvdata(&pdev->dev);

 ipmi_unregister_smi(smi->intf);
 free_irq(smi->irq, smi);
 irq_dispose_mapping(smi->irq);

 return 0;
}
