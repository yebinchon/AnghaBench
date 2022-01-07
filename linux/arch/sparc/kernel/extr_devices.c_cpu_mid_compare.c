
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

__attribute__((used)) static int cpu_mid_compare(phandle nd, int instance, void *_arg)
{
 int desired_mid = (int) _arg;
 int this_mid;

 this_mid = prom_getintdefault(nd, cpu_mid_prop(), 0);
 if (this_mid == desired_mid
     || (sparc_cpu_model == sun4m && (this_mid & 3) == desired_mid))
  return 0;
 return -ENODEV;
}
