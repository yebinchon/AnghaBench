
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PT_PAGE_TABLE_LEVEL ;
 scalar_t__ is_large_pte (int ) ;

__attribute__((used)) static int is_last_spte(u64 pte, int level)
{
 if (level == PT_PAGE_TABLE_LEVEL)
  return 1;
 if (is_large_pte(pte))
  return 1;
 return 0;
}
