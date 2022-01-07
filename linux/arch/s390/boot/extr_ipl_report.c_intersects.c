
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool intersects(unsigned long addr0, unsigned long size0,
         unsigned long addr1, unsigned long size1)
{
 return addr0 + size0 > addr1 && addr1 + size1 > addr0;
}
