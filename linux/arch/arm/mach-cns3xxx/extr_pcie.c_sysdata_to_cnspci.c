
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_sys_data {struct cns3xxx_pcie* private_data; } ;
struct cns3xxx_pcie {int dummy; } ;



__attribute__((used)) static struct cns3xxx_pcie *sysdata_to_cnspci(void *sysdata)
{
 struct pci_sys_data *root = sysdata;

 return root->private_data;
}
