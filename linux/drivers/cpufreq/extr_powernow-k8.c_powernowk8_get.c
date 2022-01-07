
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powernow_k8_data {int currfid; } ;


 unsigned int find_khz_freq_from_fid (int ) ;
 struct powernow_k8_data* per_cpu (int ,unsigned int) ;
 int powernow_data ;
 int query_values_on_cpu ;
 int smp_call_function_single (unsigned int,int ,int*,int) ;

__attribute__((used)) static unsigned int powernowk8_get(unsigned int cpu)
{
 struct powernow_k8_data *data = per_cpu(powernow_data, cpu);
 unsigned int khz = 0;
 int err;

 if (!data)
  return 0;

 smp_call_function_single(cpu, query_values_on_cpu, &err, 1);
 if (err)
  goto out;

 khz = find_khz_freq_from_fid(data->currfid);


out:
 return khz;
}
