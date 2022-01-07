
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int exists; int masked; int chip; int * domain; } ;
struct moxtet {int dev_irq; TYPE_1__ irq; TYPE_2__* dev; } ;
struct TYPE_4__ {int of_node; } ;


 int BIT (int) ;
 int ENOMEM ;
 int IRQF_ONESHOT ;
 int MOXTET_NIRQS ;
 int dev_err (TYPE_2__*,char*) ;
 int irq_create_mapping (int *,int) ;
 int * irq_domain_add_simple (int ,int,int ,int *,struct moxtet*) ;
 int moxtet_irq_chip ;
 int moxtet_irq_domain ;
 int moxtet_irq_free (struct moxtet*) ;
 int moxtet_irq_thread_fn ;
 int request_threaded_irq (int ,int *,int ,int ,char*,struct moxtet*) ;

__attribute__((used)) static int moxtet_irq_setup(struct moxtet *moxtet)
{
 int i, ret;

 moxtet->irq.domain = irq_domain_add_simple(moxtet->dev->of_node,
         MOXTET_NIRQS, 0,
         &moxtet_irq_domain, moxtet);
 if (moxtet->irq.domain == ((void*)0)) {
  dev_err(moxtet->dev, "Could not add IRQ domain\n");
  return -ENOMEM;
 }

 for (i = 0; i < MOXTET_NIRQS; ++i)
  if (moxtet->irq.exists & BIT(i))
   irq_create_mapping(moxtet->irq.domain, i);

 moxtet->irq.chip = moxtet_irq_chip;
 moxtet->irq.masked = ~0;

 ret = request_threaded_irq(moxtet->dev_irq, ((void*)0), moxtet_irq_thread_fn,
       IRQF_ONESHOT, "moxtet", moxtet);
 if (ret < 0)
  goto err_free;

 return 0;

err_free:
 moxtet_irq_free(moxtet);
 return ret;
}
