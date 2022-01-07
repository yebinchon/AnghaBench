
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2416_data {int armdiv; } ;


 int clk_get_rate (int ) ;
 int clk_set_rate (int ,unsigned int) ;
 int pr_err (char*,unsigned int,int) ;

__attribute__((used)) static int s3c2416_cpufreq_set_armdiv(struct s3c2416_data *s3c_freq,
          unsigned int freq)
{
 int ret;

 if (clk_get_rate(s3c_freq->armdiv) / 1000 != freq) {
  ret = clk_set_rate(s3c_freq->armdiv, freq * 1000);
  if (ret < 0) {
   pr_err("cpufreq: Failed to set armdiv rate %dkHz: %d\n",
          freq, ret);
   return ret;
  }
 }

 return 0;
}
