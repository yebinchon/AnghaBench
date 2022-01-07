
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* op_points; } ;
struct TYPE_4__ {scalar_t__ frequency; unsigned int driver_data; } ;


 scalar_t__ CPUFREQ_TABLE_END ;
 size_t CPU_BANIAS ;
 size_t CPU_DOTHAN_A1 ;
 size_t CPU_DOTHAN_B0 ;
 int centrino_cpu ;
 int centrino_model ;
 TYPE_2__* cpu_ids ;
 TYPE_2__* per_cpu (int ,unsigned int) ;

__attribute__((used)) static unsigned extract_clock(unsigned msr, unsigned int cpu, int failsafe)
{
 int i;






 if ((per_cpu(centrino_cpu, cpu) == &cpu_ids[CPU_BANIAS]) ||
     (per_cpu(centrino_cpu, cpu) == &cpu_ids[CPU_DOTHAN_A1]) ||
     (per_cpu(centrino_cpu, cpu) == &cpu_ids[CPU_DOTHAN_B0])) {
  msr = (msr >> 8) & 0xff;
  return msr * 100000;
 }

 if ((!per_cpu(centrino_model, cpu)) ||
     (!per_cpu(centrino_model, cpu)->op_points))
  return 0;

 msr &= 0xffff;
 for (i = 0;
  per_cpu(centrino_model, cpu)->op_points[i].frequency
       != CPUFREQ_TABLE_END;
      i++) {
  if (msr == per_cpu(centrino_model, cpu)->op_points[i].driver_data)
   return per_cpu(centrino_model, cpu)->
       op_points[i].frequency;
 }
 if (failsafe)
  return per_cpu(centrino_model, cpu)->op_points[i-1].frequency;
 else
  return 0;
}
