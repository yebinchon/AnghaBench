
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flush_icache_range_args {unsigned long start; unsigned long end; int type; int user; } ;


 int R4K_HIT ;
 int R4K_INDEX ;
 int cpu_has_ic_fills_f_dc ;
 scalar_t__ dcache_size ;
 unsigned long icache_size ;
 int instruction_hazard () ;
 int local_r4k_flush_icache_range_ipi ;
 int preempt_disable () ;
 int preempt_enable () ;
 int r4k_on_each_cpu (int,int ,struct flush_icache_range_args*) ;
 scalar_t__ r4k_op_needs_ipi (int) ;

__attribute__((used)) static void __r4k_flush_icache_range(unsigned long start, unsigned long end,
         bool user)
{
 struct flush_icache_range_args args;
 unsigned long size, cache_size;

 args.start = start;
 args.end = end;
 args.type = R4K_HIT | R4K_INDEX;
 args.user = user;





 preempt_disable();
 if (r4k_op_needs_ipi(R4K_INDEX) && !r4k_op_needs_ipi(R4K_HIT)) {




  size = end - start;
  cache_size = icache_size;
  if (!cpu_has_ic_fills_f_dc) {
   size *= 2;
   cache_size += dcache_size;
  }
  if (size <= cache_size)
   args.type &= ~R4K_INDEX;
 }
 r4k_on_each_cpu(args.type, local_r4k_flush_icache_range_ipi, &args);
 preempt_enable();
 instruction_hazard();
}
