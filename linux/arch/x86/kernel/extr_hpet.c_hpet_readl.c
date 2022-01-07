
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ hpet_virt_address ;
 unsigned int readl (scalar_t__) ;

inline unsigned int hpet_readl(unsigned int a)
{
 return readl(hpet_virt_address + a);
}
