
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* microcode_fini_cpu ) (int) ;} ;


 TYPE_1__* microcode_ops ;
 int stub1 (int) ;

__attribute__((used)) static void microcode_fini_cpu(int cpu)
{
 if (microcode_ops->microcode_fini_cpu)
  microcode_ops->microcode_fini_cpu(cpu);
}
