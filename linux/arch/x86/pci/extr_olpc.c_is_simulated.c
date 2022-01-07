
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NB_SLOT ;
 scalar_t__ PCI_SLOT (unsigned int) ;
 scalar_t__ SB_SLOT ;

__attribute__((used)) static int is_simulated(unsigned int bus, unsigned int devfn)
{
 return (!bus && ((PCI_SLOT(devfn) == NB_SLOT) ||
   (PCI_SLOT(devfn) == SB_SLOT)));
}
