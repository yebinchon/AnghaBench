
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EPERM ;

int platform_cpu_disable(unsigned int cpu)
{




 return cpu == 0 ? -EPERM : 0;
}
