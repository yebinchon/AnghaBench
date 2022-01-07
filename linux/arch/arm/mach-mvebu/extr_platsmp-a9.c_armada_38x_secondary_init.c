
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mvebu_v7_pmsu_idle_exit () ;

__attribute__((used)) static void armada_38x_secondary_init(unsigned int cpu)
{
 mvebu_v7_pmsu_idle_exit();
}
