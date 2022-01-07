
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int num_counters; } ;
struct TYPE_3__ {int* control; } ;


 int WHAT ;
 TYPE_2__ op_model_mipsxx_ops ;
 scalar_t__ oprofile_skip_cpu (int ) ;
 TYPE_1__ reg ;
 int smp_processor_id () ;
 int w_c0_perfctrl0 (int) ;
 int w_c0_perfctrl1 (int) ;
 int w_c0_perfctrl2 (int) ;
 int w_c0_perfctrl3 (int) ;

__attribute__((used)) static void mipsxx_cpu_start(void *args)
{
 unsigned int counters = op_model_mipsxx_ops.num_counters;

 if (oprofile_skip_cpu(smp_processor_id()))
  return;

 switch (counters) {
 case 4:
  w_c0_perfctrl3(WHAT | reg.control[3]);

 case 3:
  w_c0_perfctrl2(WHAT | reg.control[2]);

 case 2:
  w_c0_perfctrl1(WHAT | reg.control[1]);

 case 1:
  w_c0_perfctrl0(WHAT | reg.control[0]);
 }
}
