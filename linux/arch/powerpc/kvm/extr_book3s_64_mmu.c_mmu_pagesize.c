
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int mmu_pagesize(int mmu_pg)
{
 switch (mmu_pg) {
 case 128:
  return 16;
 case 129:
  return 24;
 }
 return 12;
}
