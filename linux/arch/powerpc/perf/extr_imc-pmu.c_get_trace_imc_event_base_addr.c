
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int per_cpu (int ,int ) ;
 int smp_processor_id () ;
 int trace_imc_mem ;

__attribute__((used)) static u64 get_trace_imc_event_base_addr(void)
{
 return (u64)per_cpu(trace_imc_mem, smp_processor_id());
}
