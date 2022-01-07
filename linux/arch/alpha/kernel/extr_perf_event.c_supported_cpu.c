
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct percpu_struct {int type; } ;
struct TYPE_2__ {int processor_offset; } ;


 unsigned long EV67_CPU ;
 unsigned long EV69_CPU ;
 TYPE_1__* hwrpb ;

__attribute__((used)) static int supported_cpu(void)
{
 struct percpu_struct *cpu;
 unsigned long cputype;


 cpu = (struct percpu_struct *)((char *)hwrpb + hwrpb->processor_offset);
 cputype = cpu->type & 0xffffffff;

 return (cputype >= EV67_CPU) && (cputype <= EV69_CPU);
}
