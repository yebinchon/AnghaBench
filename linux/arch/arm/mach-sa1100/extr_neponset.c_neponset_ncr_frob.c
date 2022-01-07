
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct neponset_drvdata {TYPE_1__** gpio; } ;
struct TYPE_2__ {int (* set_multiple ) (TYPE_1__*,unsigned long*,unsigned long*) ;} ;


 int WARN (int,char*) ;
 struct neponset_drvdata* nep ;
 int stub1 (TYPE_1__*,unsigned long*,unsigned long*) ;

void neponset_ncr_frob(unsigned int mask, unsigned int val)
{
 struct neponset_drvdata *n = nep;
 unsigned long m = mask, v = val;

 if (nep)
  n->gpio[0]->set_multiple(n->gpio[0], &m, &v);
 else
  WARN(1, "nep unset\n");
}
