
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int reset_counter2; int reset_counter1; } ;


 TYPE_1__ reg ;
 int write_c0_perfhi1 (int ) ;
 int write_c0_perfhi2 (int ) ;

__attribute__((used)) static void loongson3_cpu_setup(void *args)
{
 uint64_t perfcount1, perfcount2;

 perfcount1 = reg.reset_counter1;
 perfcount2 = reg.reset_counter2;
 write_c0_perfhi1(perfcount1);
 write_c0_perfhi2(perfcount2);
}
