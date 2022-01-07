
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBG (char*) ;
 int pcibios_last_bus ;
 int pcibios_scan_specific_bus (int) ;

__attribute__((used)) static void pcibios_fixup_peer_bridges(void)
{
 int n;

 if (pcibios_last_bus <= 0 || pcibios_last_bus > 0xff)
  return;
 DBG("PCI: Peer bridge fixup\n");

 for (n=0; n <= pcibios_last_bus; n++)
  pcibios_scan_specific_bus(n);
}
