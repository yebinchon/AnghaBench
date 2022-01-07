
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct copro_slb {unsigned long esid; } ;


 unsigned long ESID_MASK ;

__attribute__((used)) static inline int __slb_present(struct copro_slb *slbs, int nr_slbs,
  void *new_addr)
{
 unsigned long ea = (unsigned long)new_addr;
 int i;

 for (i = 0; i < nr_slbs; i++)
  if (!((slbs[i].esid ^ ea) & ESID_MASK))
   return 1;

 return 0;
}
