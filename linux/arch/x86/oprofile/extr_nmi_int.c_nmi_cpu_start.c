
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct op_msrs {int controls; } ;
struct TYPE_2__ {int (* start ) (struct op_msrs const*) ;} ;


 int WARN_ON_ONCE (int) ;
 int cpu_msrs ;
 TYPE_1__* model ;
 int stub1 (struct op_msrs const*) ;
 struct op_msrs* this_cpu_ptr (int *) ;

__attribute__((used)) static void nmi_cpu_start(void *dummy)
{
 struct op_msrs const *msrs = this_cpu_ptr(&cpu_msrs);
 if (!msrs->controls)
  WARN_ON_ONCE(1);
 else
  model->start(msrs);
}
