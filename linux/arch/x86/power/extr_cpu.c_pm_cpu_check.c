
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_cpu_id {scalar_t__ driver_data; } ;
typedef int (* pm_cpu_match_t ) (struct x86_cpu_id const*) ;


 int msr_save_cpu_table ;
 struct x86_cpu_id* x86_match_cpu (int ) ;

__attribute__((used)) static int pm_cpu_check(const struct x86_cpu_id *c)
{
 const struct x86_cpu_id *m;
 int ret = 0;

 m = x86_match_cpu(msr_save_cpu_table);
 if (m) {
  pm_cpu_match_t fn;

  fn = (pm_cpu_match_t)m->driver_data;
  ret = fn(m);
 }

 return ret;
}
