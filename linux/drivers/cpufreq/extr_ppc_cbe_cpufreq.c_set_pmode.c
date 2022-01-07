
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cbe_cpufreq_get_pmode (unsigned int) ;
 scalar_t__ cbe_cpufreq_has_pmi ;
 int cbe_cpufreq_set_pmode (unsigned int,unsigned int) ;
 int cbe_cpufreq_set_pmode_pmi (unsigned int,unsigned int) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int set_pmode(unsigned int cpu, unsigned int slow_mode)
{
 int rc;

 if (cbe_cpufreq_has_pmi)
  rc = cbe_cpufreq_set_pmode_pmi(cpu, slow_mode);
 else
  rc = cbe_cpufreq_set_pmode(cpu, slow_mode);

 pr_debug("register contains slow mode %d\n", cbe_cpufreq_get_pmode(cpu));

 return rc;
}
