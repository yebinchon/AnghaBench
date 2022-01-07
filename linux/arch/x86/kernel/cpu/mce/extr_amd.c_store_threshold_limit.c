
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tr ;
struct threshold_block {unsigned long threshold_limit; int cpu; } ;
struct thresh_restart {unsigned long old_limit; struct threshold_block* b; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 unsigned long THRESHOLD_MAX ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;
 int memset (struct thresh_restart*,int ,int) ;
 int smp_call_function_single (int ,int ,struct thresh_restart*,int) ;
 int threshold_restart_bank ;

__attribute__((used)) static ssize_t
store_threshold_limit(struct threshold_block *b, const char *buf, size_t size)
{
 struct thresh_restart tr;
 unsigned long new;

 if (kstrtoul(buf, 0, &new) < 0)
  return -EINVAL;

 if (new > THRESHOLD_MAX)
  new = THRESHOLD_MAX;
 if (new < 1)
  new = 1;

 memset(&tr, 0, sizeof(tr));
 tr.old_limit = b->threshold_limit;
 b->threshold_limit = new;
 tr.b = b;

 smp_call_function_single(b->cpu, threshold_restart_bank, &tr, 1);

 return size;
}
