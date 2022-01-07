
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int io_workaround_inited ;
 int iowa_pci_io ;
 int ppc_pci_io ;

__attribute__((used)) static void io_workaround_init(void)
{
 if (io_workaround_inited)
  return;
 ppc_pci_io = iowa_pci_io;
 io_workaround_inited = 1;
}
