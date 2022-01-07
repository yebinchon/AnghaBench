
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct pci_bus {int dummy; } ;
struct bridge_controller {int domain; } ;


 struct bridge_controller* BRIDGE_CONTROLLER (struct pci_bus*) ;
 int irq_domain_remove (int ) ;
 int pci_lock_rescan_remove () ;
 int pci_remove_root_bus (struct pci_bus*) ;
 int pci_stop_root_bus (struct pci_bus*) ;
 int pci_unlock_rescan_remove () ;
 struct pci_bus* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int bridge_remove(struct platform_device *pdev)
{
 struct pci_bus *bus = platform_get_drvdata(pdev);
 struct bridge_controller *bc = BRIDGE_CONTROLLER(bus);

 irq_domain_remove(bc->domain);
 pci_lock_rescan_remove();
 pci_stop_root_bus(bus);
 pci_remove_root_bus(bus);
 pci_unlock_rescan_remove();

 return 0;
}
