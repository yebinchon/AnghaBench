
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eeh_pe {int dummy; } ;
struct TYPE_2__ {int (* err_inject ) (struct eeh_pe*,int,int,unsigned long,unsigned long) ;} ;


 int EEH_ERR_FUNC_MAX ;
 int EEH_ERR_FUNC_MIN ;
 int EEH_ERR_TYPE_32 ;
 int EEH_ERR_TYPE_64 ;
 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 TYPE_1__* eeh_ops ;
 int stub1 (struct eeh_pe*,int,int,unsigned long,unsigned long) ;

int eeh_pe_inject_err(struct eeh_pe *pe, int type, int func,
        unsigned long addr, unsigned long mask)
{

 if (!pe)
  return -ENODEV;


 if (!eeh_ops || !eeh_ops->err_inject)
  return -ENOENT;


 if (type != EEH_ERR_TYPE_32 && type != EEH_ERR_TYPE_64)
  return -EINVAL;


 if (func < EEH_ERR_FUNC_MIN || func > EEH_ERR_FUNC_MAX)
  return -EINVAL;

 return eeh_ops->err_inject(pe, type, func, addr, mask);
}
