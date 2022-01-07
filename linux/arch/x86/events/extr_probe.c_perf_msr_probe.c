
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_msr {int msr; int (* test ) (unsigned int,void*) ;struct attribute_group* grp; int no_check; } ;
struct attribute_group {int * is_visible; } ;


 unsigned long BIT (unsigned int) ;
 int BITS_PER_LONG ;
 int * not_visible ;
 scalar_t__ rdmsrl_safe (int ,int *) ;
 int stub1 (unsigned int,void*) ;

unsigned long
perf_msr_probe(struct perf_msr *msr, int cnt, bool zero, void *data)
{
 unsigned long avail = 0;
 unsigned int bit;
 u64 val;

 if (cnt >= BITS_PER_LONG)
  return 0;

 for (bit = 0; bit < cnt; bit++) {
  if (!msr[bit].no_check) {
   struct attribute_group *grp = msr[bit].grp;

   grp->is_visible = not_visible;

   if (msr[bit].test && !msr[bit].test(bit, data))
    continue;

   if (rdmsrl_safe(msr[bit].msr, &val))
    continue;

   if (!zero && !val)
    continue;

   grp->is_visible = ((void*)0);
  }
  avail |= BIT(bit);
 }

 return avail;
}
