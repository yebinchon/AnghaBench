
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flushi (unsigned long) ;
 scalar_t__ spitfire ;
 scalar_t__ tlb_type ;

__attribute__((used)) static void bpf_flush_icache(void *start_, void *end_)
{

 if (tlb_type == spitfire) {
  unsigned long start = (unsigned long) start_;
  unsigned long end = (unsigned long) end_;

  start &= ~7UL;
  end = (end + 7UL) & ~7UL;
  while (start < end) {
   flushi(start);
   start += 32;
  }
 }
}
