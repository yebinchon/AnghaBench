
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* stop ) () ;} ;


 TYPE_1__* model ;
 int stub1 () ;

__attribute__((used)) static inline void op_powerpc_cpu_stop(void *dummy)
{
 model->stop();
}
