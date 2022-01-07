
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rail_alignment {int dummy; } ;
struct device {int dummy; } ;
struct cvb_table_freq_entry {unsigned long freq; int coefficients; } ;
struct cvb_table {int voltage_scale; int speedo_scale; struct cvb_table_freq_entry* entries; int max_millivolts; int min_millivolts; } ;


 int DOWN ;
 int MAX_DVFS_FREQS ;
 int UP ;
 int clamp (int,int,int) ;
 int dev_pm_opp_add (struct device*,unsigned long,int) ;
 int get_cvb_voltage (int,int ,int *) ;
 int round_cvb_voltage (int,int ,struct rail_alignment*) ;
 int round_voltage (int ,struct rail_alignment*,int ) ;

__attribute__((used)) static int build_opp_table(struct device *dev, const struct cvb_table *table,
      struct rail_alignment *align,
      int speedo_value, unsigned long max_freq)
{
 int i, ret, dfll_mv, min_mv, max_mv;

 min_mv = round_voltage(table->min_millivolts, align, UP);
 max_mv = round_voltage(table->max_millivolts, align, DOWN);

 for (i = 0; i < MAX_DVFS_FREQS; i++) {
  const struct cvb_table_freq_entry *entry = &table->entries[i];

  if (!entry->freq || (entry->freq > max_freq))
   break;

  dfll_mv = get_cvb_voltage(speedo_value, table->speedo_scale,
       &entry->coefficients);
  dfll_mv = round_cvb_voltage(dfll_mv, table->voltage_scale,
         align);
  dfll_mv = clamp(dfll_mv, min_mv, max_mv);

  ret = dev_pm_opp_add(dev, entry->freq, dfll_mv * 1000);
  if (ret)
   return ret;
 }

 return 0;
}
