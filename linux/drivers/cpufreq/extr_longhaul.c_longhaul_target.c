
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct cpufreq_policy {int dummy; } ;
struct TYPE_2__ {int driver_data; } ;


 int can_scale_voltage ;
 size_t longhaul_index ;
 int longhaul_setstate (struct cpufreq_policy*,unsigned int) ;
 TYPE_1__* longhaul_table ;
 int msleep (int) ;

__attribute__((used)) static int longhaul_target(struct cpufreq_policy *policy,
       unsigned int table_index)
{
 unsigned int i;
 unsigned int dir = 0;
 u8 vid, current_vid;
 int retval = 0;

 if (!can_scale_voltage)
  retval = longhaul_setstate(policy, table_index);
 else {





  i = longhaul_index;
  current_vid = (longhaul_table[longhaul_index].driver_data >> 8);
  current_vid &= 0x1f;
  if (table_index > longhaul_index)
   dir = 1;
  while (i != table_index) {
   vid = (longhaul_table[i].driver_data >> 8) & 0x1f;
   if (vid != current_vid) {
    retval = longhaul_setstate(policy, i);
    current_vid = vid;
    msleep(200);
   }
   if (dir)
    i++;
   else
    i--;
  }
  retval = longhaul_setstate(policy, table_index);
 }

 longhaul_index = table_index;
 return retval;
}
