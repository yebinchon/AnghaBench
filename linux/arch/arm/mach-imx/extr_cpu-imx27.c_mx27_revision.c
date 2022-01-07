
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int mx27_cpu_partnumber ;
 int mx27_cpu_rev ;
 int mx27_read_cpu_rev () ;

int mx27_revision(void)
{
 if (mx27_cpu_rev == -1)
  mx27_cpu_rev = mx27_read_cpu_rev();

 if (mx27_cpu_partnumber != 0x8821)
  return -EINVAL;

 return mx27_cpu_rev;
}
