
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpufreq_frequency_table {scalar_t__ frequency; } ;


 scalar_t__ CPUFREQ_TABLE_END ;

__attribute__((used)) static inline u32 get_table_count(struct cpufreq_frequency_table *table)
{
 int count;

 for (count = 0; table[count].frequency != CPUFREQ_TABLE_END; count++)
  ;

 return count;
}
