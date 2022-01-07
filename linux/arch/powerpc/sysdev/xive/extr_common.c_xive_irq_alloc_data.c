
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xive_irq_data {int target; } ;
typedef int irq_hw_number_t ;
struct TYPE_2__ {int (* populate_irq_data ) (int ,struct xive_irq_data*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int XIVE_INVALID_TARGET ;
 int irq_set_handler_data (unsigned int,struct xive_irq_data*) ;
 int kfree (struct xive_irq_data*) ;
 struct xive_irq_data* kzalloc (int,int ) ;
 int stub1 (int ,struct xive_irq_data*) ;
 TYPE_1__* xive_ops ;

__attribute__((used)) static int xive_irq_alloc_data(unsigned int virq, irq_hw_number_t hw)
{
 struct xive_irq_data *xd;
 int rc;

 xd = kzalloc(sizeof(struct xive_irq_data), GFP_KERNEL);
 if (!xd)
  return -ENOMEM;
 rc = xive_ops->populate_irq_data(hw, xd);
 if (rc) {
  kfree(xd);
  return rc;
 }
 xd->target = XIVE_INVALID_TARGET;
 irq_set_handler_data(virq, xd);

 return 0;
}
