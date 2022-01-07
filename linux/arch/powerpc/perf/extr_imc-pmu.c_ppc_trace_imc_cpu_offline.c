
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPRN_LDBAR ;
 int mtspr (int ,int ) ;

__attribute__((used)) static int ppc_trace_imc_cpu_offline(unsigned int cpu)
{
 mtspr(SPRN_LDBAR, 0);
 return 0;
}
