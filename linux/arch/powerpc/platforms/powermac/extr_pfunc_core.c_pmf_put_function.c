
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pmf_function {TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* handlers; } ;
struct TYPE_3__ {int owner; } ;


 int __pmf_put_function (struct pmf_function*) ;
 int module_put (int ) ;

void pmf_put_function(struct pmf_function *func)
{
 if (func == ((void*)0))
  return;
 module_put(func->dev->handlers->owner);
 __pmf_put_function(func);
}
