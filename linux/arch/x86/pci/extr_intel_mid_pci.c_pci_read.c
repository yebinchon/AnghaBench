
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pci_bus {int number; } ;
struct TYPE_4__ {int (* read ) (int ,int ,unsigned int,int,int,int *) ;} ;
struct TYPE_3__ {int (* read ) (int ,int ,unsigned int,int,int,int *) ;} ;


 TYPE_2__ pci_direct_conf1 ;
 int pci_domain_nr (struct pci_bus*) ;
 TYPE_1__* raw_pci_ext_ops ;
 int stub1 (int ,int ,unsigned int,int,int,int *) ;
 int stub2 (int ,int ,unsigned int,int,int,int *) ;
 scalar_t__ type1_access_ok (int ,unsigned int,int) ;

__attribute__((used)) static int pci_read(struct pci_bus *bus, unsigned int devfn, int where,
      int size, u32 *value)
{
 if (type1_access_ok(bus->number, devfn, where))
  return pci_direct_conf1.read(pci_domain_nr(bus), bus->number,
     devfn, where, size, value);
 return raw_pci_ext_ops->read(pci_domain_nr(bus), bus->number,
         devfn, where, size, value);
}
