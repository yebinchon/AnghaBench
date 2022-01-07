
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_creg_mask_parms {size_t cr; unsigned long andval; unsigned long orval; } ;


 int __ctl_load (unsigned long*,int ,int) ;
 int __ctl_store (unsigned long*,int ,int) ;

__attribute__((used)) static void smp_ctl_bit_callback(void *info)
{
 struct ec_creg_mask_parms *pp = info;
 unsigned long cregs[16];

 __ctl_store(cregs, 0, 15);
 cregs[pp->cr] = (cregs[pp->cr] & pp->andval) | pp->orval;
 __ctl_load(cregs, 0, 15);
}
