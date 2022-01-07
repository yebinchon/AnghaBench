
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprot_t ;


 int CAP_SYS_ADMIN ;
 int X86_BUG_L1TF ;
 int __pte_needs_invert (int ) ;
 int boot_cpu_has_bug (int ) ;
 int capable (int ) ;
 unsigned long l1tf_pfn_limit () ;
 scalar_t__ pfn_valid (unsigned long) ;
 int pgprot_val (int ) ;

bool pfn_modify_allowed(unsigned long pfn, pgprot_t prot)
{
 if (!boot_cpu_has_bug(X86_BUG_L1TF))
  return 1;
 if (!__pte_needs_invert(pgprot_val(prot)))
  return 1;

 if (pfn_valid(pfn))
  return 1;
 if (pfn >= l1tf_pfn_limit() && !capable(CAP_SYS_ADMIN))
  return 0;
 return 1;
}
