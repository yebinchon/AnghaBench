
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {unsigned long num_counters; int (* cpu_setup ) (TYPE_1__*) ;int (* reg_setup ) (TYPE_1__*,TYPE_3__*,int *) ;} ;
struct TYPE_10__ {scalar_t__ enabled; } ;
struct TYPE_9__ {unsigned long enable; } ;


 TYPE_3__* ctr ;
 TYPE_7__* model ;
 int op_handle_interrupt ;
 int perf_irq ;
 TYPE_1__ reg ;
 int save_perf_irq ;
 int smp_call_function (int (*) (TYPE_1__*),TYPE_1__*,int) ;
 int stub1 (TYPE_1__*,TYPE_3__*,int *) ;
 int stub2 (TYPE_1__*) ;
 int sys ;

__attribute__((used)) static int
op_axp_setup(void)
{
 unsigned long i, e;


 save_perf_irq = perf_irq;
 perf_irq = op_handle_interrupt;


 for (i = e = 0; i < model->num_counters; ++i)
  if (ctr[i].enabled)
   e |= 1 << i;
 reg.enable = e;


 model->reg_setup(&reg, ctr, &sys);


 smp_call_function(model->cpu_setup, &reg, 1);
 model->cpu_setup(&reg);
 return 0;
}
