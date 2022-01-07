
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_dec_and_test (int *) ;
 int dev_pm_opp_free_cpufreq_table (int ,int *) ;
 int freq_table ;
 int freq_table_users ;
 int mpu_dev ;

__attribute__((used)) static inline void freq_table_free(void)
{
 if (atomic_dec_and_test(&freq_table_users))
  dev_pm_opp_free_cpufreq_table(mpu_dev, &freq_table);
}
