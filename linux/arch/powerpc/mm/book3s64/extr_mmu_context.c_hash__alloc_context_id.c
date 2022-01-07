
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long MAX_USER_CONTEXT ;
 unsigned long MAX_USER_CONTEXT_65BIT_VA ;
 int MIN_USER_CONTEXT ;
 int MMU_FTR_68_BIT_VA ;
 int alloc_context_id (int ,unsigned long) ;
 scalar_t__ mmu_has_feature (int ) ;

int hash__alloc_context_id(void)
{
 unsigned long max;

 if (mmu_has_feature(MMU_FTR_68_BIT_VA))
  max = MAX_USER_CONTEXT;
 else
  max = MAX_USER_CONTEXT_65BIT_VA;

 return alloc_context_id(MIN_USER_CONTEXT, max);
}
