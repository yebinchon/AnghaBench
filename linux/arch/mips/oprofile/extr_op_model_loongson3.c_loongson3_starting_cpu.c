
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int control2; int control1; } ;


 TYPE_1__ reg ;
 int write_c0_perflo1 (int ) ;
 int write_c0_perflo2 (int ) ;

__attribute__((used)) static int loongson3_starting_cpu(unsigned int cpu)
{
 write_c0_perflo1(reg.control1);
 write_c0_perflo2(reg.control2);
 return 0;
}
