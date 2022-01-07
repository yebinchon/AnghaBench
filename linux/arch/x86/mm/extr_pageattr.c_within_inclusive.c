
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int
within_inclusive(unsigned long addr, unsigned long start, unsigned long end)
{
 return addr >= start && addr <= end;
}
