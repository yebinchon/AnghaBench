
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int (* write ) (unsigned int,unsigned int,unsigned int,int,int,int ) ;} ;
struct TYPE_3__ {int (* write ) (unsigned int,unsigned int,unsigned int,int,int,int ) ;} ;


 int EINVAL ;
 TYPE_2__* raw_pci_ext_ops ;
 TYPE_1__* raw_pci_ops ;
 int stub1 (unsigned int,unsigned int,unsigned int,int,int,int ) ;
 int stub2 (unsigned int,unsigned int,unsigned int,int,int,int ) ;

int raw_pci_write(unsigned int domain, unsigned int bus, unsigned int devfn,
      int reg, int len, u32 val)
{
 if (domain == 0 && reg < 256 && raw_pci_ops)
  return raw_pci_ops->write(domain, bus, devfn, reg, len, val);
 if (raw_pci_ext_ops)
  return raw_pci_ext_ops->write(domain, bus, devfn, reg, len, val);
 return -EINVAL;
}
