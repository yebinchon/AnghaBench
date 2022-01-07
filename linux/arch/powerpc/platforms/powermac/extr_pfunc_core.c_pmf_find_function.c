
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmf_function {int dummy; } ;
struct device_node {int dummy; } ;


 int PMF_FLAGS_ON_DEMAND ;
 struct pmf_function* __pmf_find_function (struct device_node*,char const*,int ) ;
 struct pmf_function* pmf_get_function (struct pmf_function*) ;
 int pmf_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct pmf_function *pmf_find_function(struct device_node *target,
           const char *name)
{
 struct pmf_function *func;
 unsigned long flags;

 spin_lock_irqsave(&pmf_lock, flags);
 func = __pmf_find_function(target, name, PMF_FLAGS_ON_DEMAND);
 if (func)
  func = pmf_get_function(func);
 spin_unlock_irqrestore(&pmf_lock, flags);
 return func;
}
