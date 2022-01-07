
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmf_function {int name; struct pmf_device* dev; } ;
struct pmf_device {TYPE_1__* handlers; int node; } ;
struct pmf_args {int dummy; } ;
struct TYPE_2__ {int (* end ) (struct pmf_function*,void*) ;void* (* begin ) (struct pmf_function*,struct pmf_args*) ;} ;


 int DBG (char*,int ,int ) ;
 int pmf_parse_one (struct pmf_function*,TYPE_1__*,void*,struct pmf_args*) ;
 void* stub1 (struct pmf_function*,struct pmf_args*) ;
 int stub2 (struct pmf_function*,void*) ;

int pmf_call_one(struct pmf_function *func, struct pmf_args *args)
{
 struct pmf_device *dev = func->dev;
 void *instdata = ((void*)0);
 int rc = 0;

 DBG(" ** pmf_call_one(%pOF/%s) **\n", dev->node, func->name);

 if (dev->handlers->begin)
  instdata = dev->handlers->begin(func, args);
 rc = pmf_parse_one(func, dev->handlers, instdata, args);
 if (dev->handlers->end)
  dev->handlers->end(func, instdata);

 return rc;
}
