
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mtrr_type ;
struct TYPE_2__ {int (* get ) (int,unsigned long*,unsigned long*,int *) ;} ;


 int EINVAL ;
 int ENODEV ;
 int get_online_cpus () ;
 int mtrr_enabled () ;
 TYPE_1__* mtrr_if ;
 int mtrr_mutex ;
 int* mtrr_usage_table ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int num_var_ranges ;
 int pr_debug (char*,unsigned long,unsigned long) ;
 int pr_warn (char*,int) ;
 int put_online_cpus () ;
 int set_mtrr_cpuslocked (int,int ,int ,int ) ;
 int stub1 (int,unsigned long*,unsigned long*,int *) ;
 int stub2 (int,unsigned long*,unsigned long*,int *) ;

int mtrr_del_page(int reg, unsigned long base, unsigned long size)
{
 int i, max;
 mtrr_type ltype;
 unsigned long lbase, lsize;
 int error = -EINVAL;

 if (!mtrr_enabled())
  return -ENODEV;

 max = num_var_ranges;

 get_online_cpus();
 mutex_lock(&mtrr_mutex);
 if (reg < 0) {

  for (i = 0; i < max; ++i) {
   mtrr_if->get(i, &lbase, &lsize, &ltype);
   if (lbase == base && lsize == size) {
    reg = i;
    break;
   }
  }
  if (reg < 0) {
   pr_debug("no MTRR for %lx000,%lx000 found\n",
     base, size);
   goto out;
  }
 }
 if (reg >= max) {
  pr_warn("register: %d too big\n", reg);
  goto out;
 }
 mtrr_if->get(reg, &lbase, &lsize, &ltype);
 if (lsize < 1) {
  pr_warn("MTRR %d not used\n", reg);
  goto out;
 }
 if (mtrr_usage_table[reg] < 1) {
  pr_warn("reg: %d has count=0\n", reg);
  goto out;
 }
 if (--mtrr_usage_table[reg] < 1)
  set_mtrr_cpuslocked(reg, 0, 0, 0);
 error = reg;
 out:
 mutex_unlock(&mtrr_mutex);
 put_online_cpus();
 return error;
}
