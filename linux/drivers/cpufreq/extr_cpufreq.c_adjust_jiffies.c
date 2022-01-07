
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_freqs {int flags; unsigned int old; unsigned int new; } ;


 int CPUFREQ_CONST_LOOPS ;
 unsigned long CPUFREQ_POSTCHANGE ;
 unsigned long cpufreq_scale (unsigned long,unsigned int,unsigned int) ;
 unsigned long loops_per_jiffy ;
 int pr_debug (char*,unsigned long,unsigned int) ;

__attribute__((used)) static void adjust_jiffies(unsigned long val, struct cpufreq_freqs *ci)
{

 static unsigned long l_p_j_ref;
 static unsigned int l_p_j_ref_freq;

 if (ci->flags & CPUFREQ_CONST_LOOPS)
  return;

 if (!l_p_j_ref_freq) {
  l_p_j_ref = loops_per_jiffy;
  l_p_j_ref_freq = ci->old;
  pr_debug("saving %lu as reference value for loops_per_jiffy; freq is %u kHz\n",
    l_p_j_ref, l_p_j_ref_freq);
 }
 if (val == CPUFREQ_POSTCHANGE && ci->old != ci->new) {
  loops_per_jiffy = cpufreq_scale(l_p_j_ref, l_p_j_ref_freq,
        ci->new);
  pr_debug("scaling loops_per_jiffy to %lu for frequency %u kHz\n",
    loops_per_jiffy, ci->new);
 }

}
