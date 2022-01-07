
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pmf_irq_client {struct pmf_function* func; int link; } ;
struct pmf_function {int irq_clients; TYPE_2__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {TYPE_1__* handlers; } ;
struct TYPE_3__ {int (* irq_enable ) (struct pmf_function*) ;} ;


 int ENODEV ;
 int PMF_FLAGS_INT_GEN ;
 struct pmf_function* __pmf_find_function (struct device_node*,char const*,int ) ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct pmf_function* pmf_get_function (struct pmf_function*) ;
 int pmf_irq_mutex ;
 int pmf_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct pmf_function*) ;

int pmf_register_irq_client(struct device_node *target,
       const char *name,
       struct pmf_irq_client *client)
{
 struct pmf_function *func;
 unsigned long flags;

 spin_lock_irqsave(&pmf_lock, flags);
 func = __pmf_find_function(target, name, PMF_FLAGS_INT_GEN);
 if (func)
  func = pmf_get_function(func);
 spin_unlock_irqrestore(&pmf_lock, flags);
 if (func == ((void*)0))
  return -ENODEV;


 mutex_lock(&pmf_irq_mutex);
 if (list_empty(&func->irq_clients))
  func->dev->handlers->irq_enable(func);


 spin_lock_irqsave(&pmf_lock, flags);
 list_add(&client->link, &func->irq_clients);
 spin_unlock_irqrestore(&pmf_lock, flags);

 client->func = func;
 mutex_unlock(&pmf_irq_mutex);

 return 0;
}
