
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mmu_audit ;
 int mmu_audit_key ;
 int static_key_slow_inc (int *) ;

__attribute__((used)) static void mmu_audit_enable(void)
{
 if (mmu_audit)
  return;

 static_key_slow_inc(&mmu_audit_key);
 mmu_audit = 1;
}
