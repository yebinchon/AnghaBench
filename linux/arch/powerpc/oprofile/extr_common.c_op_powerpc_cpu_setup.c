
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* cpu_setup ) (int ) ;} ;


 int ctr ;
 TYPE_1__* model ;
 int op_per_cpu_rc ;
 int stub1 (int ) ;

__attribute__((used)) static void op_powerpc_cpu_setup(void *dummy)
{
 int ret;

 ret = model->cpu_setup(ctr);

 if (ret != 0)
  op_per_cpu_rc = ret;
}
