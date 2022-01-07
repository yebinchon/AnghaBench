
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int phys_addr_t ;



__attribute__((used)) static inline u32 phys_to_sbar(phys_addr_t addr)
{
 return (addr >> 8) & 0xfffffc00;
}
