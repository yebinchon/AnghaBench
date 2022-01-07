
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_frequency_table {int frequency; } ;


 int CPUFREQ_TABLE_END ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct cpufreq_frequency_table* kzalloc (unsigned int,int ) ;
 int memcpy (struct cpufreq_frequency_table*,struct cpufreq_frequency_table*,unsigned int) ;
 struct cpufreq_frequency_table* pll_reg ;
 int pr_err (char*) ;
 int pr_info (char*,unsigned int) ;

int s3c_plltab_register(struct cpufreq_frequency_table *plls,
          unsigned int plls_no)
{
 struct cpufreq_frequency_table *vals;
 unsigned int size;

 size = sizeof(*vals) * (plls_no + 1);

 vals = kzalloc(size, GFP_KERNEL);
 if (vals) {
  memcpy(vals, plls, size);
  pll_reg = vals;



  vals += plls_no;
  vals->frequency = CPUFREQ_TABLE_END;

  pr_info("%d PLL entries\n", plls_no);
 } else
  pr_err("no memory for PLL tables\n");

 return vals ? 0 : -ENOMEM;
}
