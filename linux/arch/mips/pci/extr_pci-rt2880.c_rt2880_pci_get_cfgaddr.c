
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;



__attribute__((used)) static inline u32 rt2880_pci_get_cfgaddr(unsigned int bus, unsigned int slot,
      unsigned int func, unsigned int where)
{
 return ((bus << 16) | (slot << 11) | (func << 8) | (where & 0xfc) |
  0x80000000);
}
