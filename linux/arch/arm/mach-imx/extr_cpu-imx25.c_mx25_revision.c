
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mx25_cpu_rev ;
 int mx25_read_cpu_rev () ;

int mx25_revision(void)
{
 if (mx25_cpu_rev == -1)
  mx25_cpu_rev = mx25_read_cpu_rev();

 return mx25_cpu_rev;
}
