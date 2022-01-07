
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int armada_38x_do_cpu_suspend ;
 int cpu_suspend (int,int ) ;

__attribute__((used)) static int armada_38x_cpu_suspend(unsigned long deepidle)
{
 return cpu_suspend(0, armada_38x_do_cpu_suspend);
}
