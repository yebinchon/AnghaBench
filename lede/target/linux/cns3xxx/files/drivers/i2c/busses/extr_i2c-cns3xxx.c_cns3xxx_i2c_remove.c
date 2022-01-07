
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ start; scalar_t__ end; } ;
struct platform_device {int dummy; } ;
struct cns3xxx_i2c {int base; int adap; } ;


 int CNS3xxx_I2C_DISABLE () ;
 int CNS3xxx_I2C_DISABLE_INTR () ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int free_irq (scalar_t__,struct cns3xxx_i2c*) ;
 int i2c_del_adapter (int *) ;
 int iounmap (int ) ;
 int kfree (struct cns3xxx_i2c*) ;
 struct cns3xxx_i2c* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int release_mem_region (scalar_t__,scalar_t__) ;

__attribute__((used)) static int cns3xxx_i2c_remove(struct platform_device *pdev)
{
 struct cns3xxx_i2c *i2c = platform_get_drvdata(pdev);
 struct resource *res;


 CNS3xxx_I2C_DISABLE_INTR();
 CNS3xxx_I2C_DISABLE();

 i2c_del_adapter(&i2c->adap);
 platform_set_drvdata(pdev, ((void*)0));

 res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (res)
  free_irq(res->start, i2c);

 iounmap(i2c->base);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (res)
  release_mem_region(res->start, res->end - res->start + 1);

 kfree(i2c);

 return 0;
}
