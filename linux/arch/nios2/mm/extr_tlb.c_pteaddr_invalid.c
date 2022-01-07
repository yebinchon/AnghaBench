
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_SHIFT ;

__attribute__((used)) static unsigned long pteaddr_invalid(unsigned long addr)
{
 return ((addr | 0xC0000000UL) >> PAGE_SHIFT) << 2;
}
