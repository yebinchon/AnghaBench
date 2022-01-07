
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HPTE_V_LARGE ;

__attribute__((used)) static inline unsigned long hpte0_pgsize_encoding(unsigned long pgsize)
{
 return (pgsize > 0x1000) ? HPTE_V_LARGE : 0;
}
