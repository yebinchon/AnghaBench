
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mcpm_cpu_powered_up () ;

__attribute__((used)) static void mcpm_secondary_init(unsigned int cpu)
{
 mcpm_cpu_powered_up();
}
