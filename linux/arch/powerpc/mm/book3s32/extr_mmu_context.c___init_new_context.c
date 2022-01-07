
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LAST_CONTEXT ;
 int context_map ;
 unsigned long find_next_zero_bit (int ,int,unsigned long) ;
 unsigned long next_mmu_context ;
 scalar_t__ test_and_set_bit (unsigned long,int ) ;

unsigned long __init_new_context(void)
{
 unsigned long ctx = next_mmu_context;

 while (test_and_set_bit(ctx, context_map)) {
  ctx = find_next_zero_bit(context_map, LAST_CONTEXT+1, ctx);
  if (ctx > LAST_CONTEXT)
   ctx = 0;
 }
 next_mmu_context = (ctx + 1) & LAST_CONTEXT;

 return ctx;
}
