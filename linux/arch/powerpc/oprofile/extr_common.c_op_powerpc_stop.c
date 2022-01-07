
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* global_stop ) () ;scalar_t__ stop; } ;


 TYPE_1__* model ;
 int on_each_cpu (int ,int *,int) ;
 int op_powerpc_cpu_stop ;
 int stub1 () ;

__attribute__((used)) static void op_powerpc_stop(void)
{
 if (model->stop)
  on_each_cpu(op_powerpc_cpu_stop, ((void*)0), 1);
        if (model->global_stop)
                model->global_stop();
}
