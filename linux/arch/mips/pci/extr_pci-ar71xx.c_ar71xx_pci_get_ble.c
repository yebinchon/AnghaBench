
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BUG_ON (int) ;
 int** ar71xx_pci_ble_table ;

__attribute__((used)) static inline u32 ar71xx_pci_get_ble(int where, int size, int local)
{
 u32 t;

 t = ar71xx_pci_ble_table[size & 3][where & 3];
 BUG_ON(t == 0xf);
 t <<= (local) ? 20 : 4;

 return t;
}
