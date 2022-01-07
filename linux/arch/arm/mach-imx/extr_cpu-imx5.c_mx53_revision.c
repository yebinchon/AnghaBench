
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_mx53_srev () ;
 int mx5_cpu_rev ;

int mx53_revision(void)
{
 if (mx5_cpu_rev == -1)
  mx5_cpu_rev = get_mx53_srev();

 return mx5_cpu_rev;
}
