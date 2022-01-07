
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zpci_dev {int dummy; } ;
struct pci_bus {int dummy; } ;


 int ENODEV ;
 unsigned int ZPCI_DEVFN ;
 struct zpci_dev* get_zdev_by_bus (struct pci_bus*) ;
 int zpci_cfg_load (struct zpci_dev*,int,int *,int) ;

__attribute__((used)) static int pci_read(struct pci_bus *bus, unsigned int devfn, int where,
      int size, u32 *val)
{
 struct zpci_dev *zdev = get_zdev_by_bus(bus);
 int ret;

 if (!zdev || devfn != ZPCI_DEVFN)
  ret = -ENODEV;
 else
  ret = zpci_cfg_load(zdev, where, val, size);

 return ret;
}
