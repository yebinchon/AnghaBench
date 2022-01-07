
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mpic_setup_this_cpu () ;

__attribute__((used)) static void smp_85xx_setup_cpu(int cpu_nr)
{
 mpic_setup_this_cpu();
}
