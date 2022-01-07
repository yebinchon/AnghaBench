
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 scalar_t__ NO_CONTEXT ;
 scalar_t__ cpu_context (int ,struct mm_struct*) ;
 int flush_dcache_all () ;
 int smp_processor_id () ;

__attribute__((used)) static void sh4_flush_cache_mm(void *arg)
{
 struct mm_struct *mm = arg;

 if (cpu_context(smp_processor_id(), mm) == NO_CONTEXT)
  return;

 flush_dcache_all();
}
