
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mx35_cpu_rev ;
 int mx35_read_cpu_rev () ;

int mx35_revision(void)
{
 if (mx35_cpu_rev == -1)
  mx35_cpu_rev = mx35_read_cpu_rev();

 return mx35_cpu_rev;
}
