
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ptr; } ;
struct clkdm_autodep {TYPE_1__ clkdm; } ;


 int EACCES ;
 int EEXIST ;
 int EINVAL ;
 int _autodep_lookup (struct clkdm_autodep*) ;
 struct clkdm_autodep* autodeps ;
 int clkdm_list ;
 scalar_t__ list_empty (int *) ;

int clkdm_register_autodeps(struct clkdm_autodep *ia)
{
 struct clkdm_autodep *a = ((void*)0);

 if (list_empty(&clkdm_list))
  return -EACCES;

 if (!ia)
  return -EINVAL;

 if (autodeps)
  return -EEXIST;

 autodeps = ia;
 for (a = autodeps; a->clkdm.ptr; a++)
  _autodep_lookup(a);

 return 0;
}
