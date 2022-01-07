
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hcall_stats {int purr_start; int tb_start; } ;


 unsigned long MAX_HCALL_OPCODE ;
 int SPRN_PURR ;
 int * hcall_stats ;
 int mfspr (int ) ;
 int mftb () ;
 struct hcall_stats* this_cpu_ptr (int *) ;

__attribute__((used)) static void probe_hcall_entry(void *ignored, unsigned long opcode, unsigned long *args)
{
 struct hcall_stats *h;

 if (opcode > MAX_HCALL_OPCODE)
  return;

 h = this_cpu_ptr(&hcall_stats[opcode / 4]);
 h->tb_start = mftb();
 h->purr_start = mfspr(SPRN_PURR);
}
