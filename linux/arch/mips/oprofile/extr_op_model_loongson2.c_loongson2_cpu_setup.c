
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reset_counter2; int reset_counter1; } ;


 TYPE_1__ reg ;
 int write_c0_perfcnt (int) ;

__attribute__((used)) static void loongson2_cpu_setup(void *args)
{
 write_c0_perfcnt((reg.reset_counter2 << 32) | reg.reset_counter1);
}
