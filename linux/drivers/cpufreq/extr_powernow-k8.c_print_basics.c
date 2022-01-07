
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct powernow_k8_data {int numps; int batps; TYPE_1__* powernow_table; } ;
struct TYPE_2__ {int frequency; int driver_data; } ;


 int CPUFREQ_ENTRY_INVALID ;
 int pr_info (char*,int,...) ;

__attribute__((used)) static void print_basics(struct powernow_k8_data *data)
{
 int j;
 for (j = 0; j < data->numps; j++) {
  if (data->powernow_table[j].frequency !=
    CPUFREQ_ENTRY_INVALID) {
   pr_info("fid 0x%x (%d MHz), vid 0x%x\n",
    data->powernow_table[j].driver_data & 0xff,
    data->powernow_table[j].frequency/1000,
    data->powernow_table[j].driver_data >> 8);
  }
 }
 if (data->batps)
  pr_info("Only %d pstates on battery\n", data->batps);
}
