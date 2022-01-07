
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_frequency_table {scalar_t__ frequency; } ;


 scalar_t__ CPUFREQ_ENTRY_INVALID ;

__attribute__((used)) static void freq_table_redup(struct cpufreq_frequency_table *freq_table,
  int count)
{
 int i, j;

 for (i = 1; i < count; i++) {
  for (j = 0; j < i; j++) {
   if (freq_table[j].frequency == CPUFREQ_ENTRY_INVALID ||
     freq_table[j].frequency !=
     freq_table[i].frequency)
    continue;

   freq_table[i].frequency = CPUFREQ_ENTRY_INVALID;
   break;
  }
 }
}
