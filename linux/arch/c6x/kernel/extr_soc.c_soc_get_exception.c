
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* get_exception ) () ;} ;


 TYPE_1__ soc_ops ;
 int stub1 () ;

int soc_get_exception(void)
{
 if (!soc_ops.get_exception)
  return -1;
 return soc_ops.get_exception();
}
