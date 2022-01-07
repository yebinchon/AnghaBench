
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mx31_cpu_rev ;
 int mx31_read_cpu_rev () ;

int mx31_revision(void)
{
 if (mx31_cpu_rev == -1)
  mx31_cpu_rev = mx31_read_cpu_rev();

 return mx31_cpu_rev;
}
