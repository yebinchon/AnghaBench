
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int core_id; int proc_id; } ;






 int EINVAL ;
 TYPE_1__ cpu_data (int) ;
 int cpu_to_node (int) ;

__attribute__((used)) static int cpuinfo_id(int cpu, int level)
{
 int id;

 switch (level) {
 case 128:
  id = 0;
  break;
 case 130:
  id = cpu_to_node(cpu);
  break;
 case 131:
  id = cpu_data(cpu).core_id;
  break;
 case 129:
  id = cpu_data(cpu).proc_id;
  break;
 default:
  id = -EINVAL;
 }
 return id;
}
