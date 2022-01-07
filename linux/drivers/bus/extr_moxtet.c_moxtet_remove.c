
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct moxtet {int lock; int dev; int dev_irq; } ;


 int __unregister ;
 int device_for_each_child (int ,int *,int ) ;
 int free_irq (int ,struct moxtet*) ;
 int moxtet_irq_free (struct moxtet*) ;
 int moxtet_unregister_debugfs (struct moxtet*) ;
 int mutex_destroy (int *) ;
 struct moxtet* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int moxtet_remove(struct spi_device *spi)
{
 struct moxtet *moxtet = spi_get_drvdata(spi);

 free_irq(moxtet->dev_irq, moxtet);

 moxtet_irq_free(moxtet);

 moxtet_unregister_debugfs(moxtet);

 device_for_each_child(moxtet->dev, ((void*)0), __unregister);

 mutex_destroy(&moxtet->lock);

 return 0;
}
