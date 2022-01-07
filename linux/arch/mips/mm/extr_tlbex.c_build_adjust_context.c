
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
 int PAGE_SHIFT ;
 int PTE_T_LOG2 ;
 int PTRS_PER_PTE ;
 int UASM_i_SRL (int **,unsigned int,unsigned int,unsigned int) ;
 int current_cpu_type () ;
 int uasm_i_andi (int **,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void build_adjust_context(u32 **p, unsigned int ctx)
{
 unsigned int shift = 4 - (PTE_T_LOG2 + 1) + PAGE_SHIFT - 12;
 unsigned int mask = (PTRS_PER_PTE / 2 - 1) << (PTE_T_LOG2 + 1);

 switch (current_cpu_type()) {
 case 128:
 case 135:
 case 134:
 case 133:
 case 132:
 case 130:
 case 129:
 case 131:
  shift += 2;
  break;

 default:
  break;
 }

 if (shift)
  UASM_i_SRL(p, ctx, ctx, shift);
 uasm_i_andi(p, ctx, ctx, mask);
}
