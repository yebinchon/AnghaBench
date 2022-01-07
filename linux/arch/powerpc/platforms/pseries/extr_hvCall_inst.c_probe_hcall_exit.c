
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hcall_stats {scalar_t__ purr_start; int purr_total; scalar_t__ tb_start; int tb_total; int num_calls; } ;


 unsigned long MAX_HCALL_OPCODE ;
 int SPRN_PURR ;
 int * hcall_stats ;
 scalar_t__ mfspr (int ) ;
 scalar_t__ mftb () ;
 struct hcall_stats* this_cpu_ptr (int *) ;

__attribute__((used)) static void probe_hcall_exit(void *ignored, unsigned long opcode, long retval,
        unsigned long *retbuf)
{
 struct hcall_stats *h;

 if (opcode > MAX_HCALL_OPCODE)
  return;

 h = this_cpu_ptr(&hcall_stats[opcode / 4]);
 h->num_calls++;
 h->tb_total += mftb() - h->tb_start;
 h->purr_total += mfspr(SPRN_PURR) - h->purr_start;
}
