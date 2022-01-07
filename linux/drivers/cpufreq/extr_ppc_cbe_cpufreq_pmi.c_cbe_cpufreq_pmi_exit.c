
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cbe_cpufreq_has_pmi ;
 int cbe_pmi_handler ;
 int pmi_unregister_handler (int *) ;

void cbe_cpufreq_pmi_exit(void)
{
 pmi_unregister_handler(&cbe_pmi_handler);
 cbe_cpufreq_has_pmi = 0;
}
