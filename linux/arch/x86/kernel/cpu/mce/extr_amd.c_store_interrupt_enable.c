
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tr ;
struct threshold_block {int interrupt_enable; int cpu; int interrupt_capable; } ;
struct thresh_restart {struct threshold_block* b; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;
 int memset (struct thresh_restart*,int ,int) ;
 int smp_call_function_single (int ,int ,struct thresh_restart*,int) ;
 int threshold_restart_bank ;

__attribute__((used)) static ssize_t
store_interrupt_enable(struct threshold_block *b, const char *buf, size_t size)
{
 struct thresh_restart tr;
 unsigned long new;

 if (!b->interrupt_capable)
  return -EINVAL;

 if (kstrtoul(buf, 0, &new) < 0)
  return -EINVAL;

 b->interrupt_enable = !!new;

 memset(&tr, 0, sizeof(tr));
 tr.b = b;

 smp_call_function_single(b->cpu, threshold_restart_bank, &tr, 1);

 return size;
}
