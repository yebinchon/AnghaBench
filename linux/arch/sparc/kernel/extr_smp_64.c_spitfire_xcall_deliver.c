
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct trap_per_cpu {int cpu_mondo_block_pa; int cpu_list_pa; } ;


 void* __va (int ) ;
 int spitfire_xcall_helper (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void spitfire_xcall_deliver(struct trap_per_cpu *tb, int cnt)
{
 u64 *mondo, data0, data1, data2;
 u16 *cpu_list;
 u64 pstate;
 int i;

 __asm__ __volatile__("rdpr %%pstate, %0" : "=r" (pstate));
 cpu_list = __va(tb->cpu_list_pa);
 mondo = __va(tb->cpu_mondo_block_pa);
 data0 = mondo[0];
 data1 = mondo[1];
 data2 = mondo[2];
 for (i = 0; i < cnt; i++)
  spitfire_xcall_helper(data0, data1, data2, pstate, cpu_list[i]);
}
