
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int leon_flush_dcache_all () ;
 scalar_t__ sparc_cpu_model ;
 scalar_t__ sparc_leon ;
 int sparc_leon3_snooping_enabled () ;

__attribute__((used)) static inline void dma_make_coherent(unsigned long pa, unsigned long len)
{
 if (sparc_cpu_model == sparc_leon) {
  if (!sparc_leon3_snooping_enabled())
   leon_flush_dcache_all();
 }
}
