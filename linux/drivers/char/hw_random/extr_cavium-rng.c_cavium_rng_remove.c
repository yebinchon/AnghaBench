
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct cavium_rng_pf {int control_status; } ;


 int pci_disable_sriov (struct pci_dev*) ;
 struct cavium_rng_pf* pci_get_drvdata (struct pci_dev*) ;
 int writeq (int ,int ) ;

__attribute__((used)) static void cavium_rng_remove(struct pci_dev *pdev)
{
 struct cavium_rng_pf *rng;

 rng = pci_get_drvdata(pdev);


 pci_disable_sriov(pdev);


 writeq(0, rng->control_status);
}
