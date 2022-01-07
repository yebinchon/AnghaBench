
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powernv_smp_call_data {unsigned long pstate_id; unsigned long gpstate_id; } ;


 int SPRN_PMCR ;
 unsigned long get_pmspr (int ) ;
 int pr_debug (char*,int ,unsigned long) ;
 int raw_smp_processor_id () ;
 int set_pmspr (int ,unsigned long) ;

__attribute__((used)) static void set_pstate(void *data)
{
 unsigned long val;
 struct powernv_smp_call_data *freq_data = data;
 unsigned long pstate_ul = freq_data->pstate_id;
 unsigned long gpstate_ul = freq_data->gpstate_id;

 val = get_pmspr(SPRN_PMCR);
 val = val & 0x0000FFFFFFFFFFFFULL;

 pstate_ul = pstate_ul & 0xFF;
 gpstate_ul = gpstate_ul & 0xFF;


 val = val | (gpstate_ul << 56) | (pstate_ul << 48);

 pr_debug("Setting cpu %d pmcr to %016lX\n",
   raw_smp_processor_id(), val);
 set_pmspr(SPRN_PMCR, val);
}
