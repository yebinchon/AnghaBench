
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCICAR_BUSN ;
 unsigned int PCICAR_DEVFNN ;

__attribute__((used)) static unsigned long mcf_mk_pcicar(int bus, unsigned int devfn, int where)
{
 return (bus << PCICAR_BUSN) | (devfn << PCICAR_DEVFNN) | (where & 0xfc);
}
