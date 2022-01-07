
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 long __flush_cache_user_range (unsigned long,unsigned long) ;
 int cond_resched () ;
 int current ;
 scalar_t__ fatal_signal_pending (int ) ;
 unsigned long min (int ,unsigned long) ;

__attribute__((used)) static long
__do_compat_cache_op(unsigned long start, unsigned long end)
{
 long ret;

 do {
  unsigned long chunk = min(PAGE_SIZE, end - start);

  if (fatal_signal_pending(current))
   return 0;

  ret = __flush_cache_user_range(start, start + chunk);
  if (ret)
   return ret;

  cond_resched();
  start += chunk;
 } while (start < end);

 return 0;
}
