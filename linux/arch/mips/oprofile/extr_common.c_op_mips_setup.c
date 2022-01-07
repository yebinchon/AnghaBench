
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpu_setup; int (* reg_setup ) (int ) ;} ;


 int ctr ;
 TYPE_1__* model ;
 int on_each_cpu (int ,int *,int) ;
 int stub1 (int ) ;

__attribute__((used)) static int op_mips_setup(void)
{

 model->reg_setup(ctr);


 on_each_cpu(model->cpu_setup, ((void*)0), 1);

 return 0;
}
