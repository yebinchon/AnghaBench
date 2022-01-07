
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle ;


 int ENODEV ;
 int cpu_mid_prop () ;
 int prom_getintdefault (int ,int ,int ) ;
 scalar_t__ sparc_cpu_model ;
 scalar_t__ sun4m ;

__attribute__((used)) static int check_cpu_node(phandle nd, int *cur_inst,
  int (*compare)(phandle, int, void *), void *compare_arg,
  phandle *prom_node, int *mid)
{
 if (!compare(nd, *cur_inst, compare_arg)) {
  if (prom_node)
   *prom_node = nd;
  if (mid) {
   *mid = prom_getintdefault(nd, cpu_mid_prop(), 0);
   if (sparc_cpu_model == sun4m)
    *mid &= 3;
  }
  return 0;
 }

 (*cur_inst)++;

 return -ENODEV;
}
