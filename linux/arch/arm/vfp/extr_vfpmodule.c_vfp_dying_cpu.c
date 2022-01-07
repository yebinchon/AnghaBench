
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ** vfp_current_hw_state ;

__attribute__((used)) static int vfp_dying_cpu(unsigned int cpu)
{
 vfp_current_hw_state[cpu] = ((void*)0);
 return 0;
}
