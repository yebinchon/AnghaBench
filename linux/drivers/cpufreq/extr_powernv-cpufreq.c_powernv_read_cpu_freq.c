
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powernv_smp_call_data {int freq; int pstate_id; } ;


 int SPRN_PMSR ;
 int extract_local_pstate (unsigned long) ;
 unsigned long get_pmspr (int ) ;
 int pr_debug (char*,int ,unsigned long,int ,int ) ;
 int pstate_id_to_freq (int ) ;
 int raw_smp_processor_id () ;

__attribute__((used)) static void powernv_read_cpu_freq(void *arg)
{
 unsigned long pmspr_val;
 struct powernv_smp_call_data *freq_data = arg;

 pmspr_val = get_pmspr(SPRN_PMSR);
 freq_data->pstate_id = extract_local_pstate(pmspr_val);
 freq_data->freq = pstate_id_to_freq(freq_data->pstate_id);

 pr_debug("cpu %d pmsr %016lX pstate_id 0x%x frequency %d kHz\n",
   raw_smp_processor_id(), pmspr_val, freq_data->pstate_id,
   freq_data->freq);
}
