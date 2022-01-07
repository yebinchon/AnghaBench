
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct benchmarks {int member_1; char* member_2; int title; int offset; scalar_t__ fn; int * member_0; } ;


 int benchmark_nop ;
 int benchmark_pushpop1 ;
 int benchmark_pushpop2 ;
 int benchmark_pushpop3 ;
 int benchmark_pushpop4 ;
 int benchmark_pushpop_thumb ;
 int kprobe_benchmark (scalar_t__,int ) ;
 int pr_info (char*,...) ;

__attribute__((used)) static int run_benchmarks(void)
{
 int ret;
 struct benchmarks list[] = {
  {&benchmark_nop, 0, "nop"},





  {&benchmark_pushpop1, 0, "stmdb	sp!, {r3-r11,lr}"},
  {&benchmark_pushpop1, 4, "ldmia	sp!, {r3-r11,pc}"},
  {&benchmark_pushpop2, 0, "stmdb	sp!, {r0-r8,lr}"},
  {&benchmark_pushpop2, 4, "ldmia	sp!, {r0-r8,pc}"},
  {&benchmark_pushpop3, 0, "stmdb	sp!, {r4,lr}"},
  {&benchmark_pushpop3, 4, "ldmia	sp!, {r4,pc}"},
  {&benchmark_pushpop4, 0, "stmdb	sp!, {r0,lr}"},
  {&benchmark_pushpop4, 4, "ldmia	sp!, {r0,pc}"},




  {0}
 };

 struct benchmarks *b;
 for (b = list; b->fn; ++b) {
  ret = kprobe_benchmark(b->fn, b->offset);
  if (ret < 0)
   return ret;
  pr_info("    %dns for kprobe %s\n", ret, b->title);
 }

 pr_info("\n");
 return 0;
}
