
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2416_data {int armclk; scalar_t__ is_dvs; } ;


 unsigned int FREQ_DVS ;
 int clk_get_rate (int ) ;
 struct s3c2416_data s3c2416_cpufreq ;

__attribute__((used)) static unsigned int s3c2416_cpufreq_get_speed(unsigned int cpu)
{
 struct s3c2416_data *s3c_freq = &s3c2416_cpufreq;

 if (cpu != 0)
  return 0;


 if (s3c_freq->is_dvs)
  return FREQ_DVS;

 return clk_get_rate(s3c_freq->armclk) / 1000;
}
