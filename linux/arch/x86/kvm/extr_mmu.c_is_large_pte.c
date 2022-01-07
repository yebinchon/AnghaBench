
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PT_PAGE_SIZE_MASK ;

__attribute__((used)) static int is_large_pte(u64 pte)
{
 return pte & PT_PAGE_SIZE_MASK;
}
