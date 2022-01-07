
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X86_FEATURE_CLFLUSH ;
 scalar_t__ boot_cpu_has (int ) ;
 int clflush (void*) ;
 int wbinvd () ;

__attribute__((used)) static inline void flush_tce(void* tceaddr)
{

 if (boot_cpu_has(X86_FEATURE_CLFLUSH))
  clflush(tceaddr);
 else
  wbinvd();
}
