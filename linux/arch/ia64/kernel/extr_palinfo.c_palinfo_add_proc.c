
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct proc_dir_entry {int dummy; } ;
struct TYPE_3__ {unsigned int req_cpu; int func_id; scalar_t__ value; } ;
typedef TYPE_1__ pal_func_cpu_u_t ;
struct TYPE_4__ {int name; } ;


 int EINVAL ;
 int NR_PALINFO_ENTRIES ;
 int palinfo_dir ;
 TYPE_2__* palinfo_entries ;
 int proc_create_single_data (int ,int ,struct proc_dir_entry*,int ,void*) ;
 struct proc_dir_entry* proc_mkdir (char*,int ) ;
 int proc_palinfo_show ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static int palinfo_add_proc(unsigned int cpu)
{
 pal_func_cpu_u_t f;
 struct proc_dir_entry *cpu_dir;
 int j;
 char cpustr[3+4+1];
 sprintf(cpustr, "cpu%d", cpu);

 cpu_dir = proc_mkdir(cpustr, palinfo_dir);
 if (!cpu_dir)
  return -EINVAL;

 f.req_cpu = cpu;

 for (j=0; j < NR_PALINFO_ENTRIES; j++) {
  f.func_id = j;
  proc_create_single_data(palinfo_entries[j].name, 0, cpu_dir,
    proc_palinfo_show, (void *)f.value);
 }
 return 0;
}
