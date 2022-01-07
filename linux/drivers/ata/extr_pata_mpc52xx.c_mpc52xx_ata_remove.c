
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mpc52xx_ata_priv {int ata_irq; int dmatsk; } ;
struct ata_host {struct mpc52xx_ata_priv* private_data; } ;


 int ata_platform_remove_one (struct platform_device*) ;
 int bcom_ata_release (int ) ;
 int bcom_get_task_irq (int ) ;
 int irq_dispose_mapping (int) ;
 struct ata_host* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int
mpc52xx_ata_remove(struct platform_device *op)
{
 struct ata_host *host = platform_get_drvdata(op);
 struct mpc52xx_ata_priv *priv = host->private_data;
 int task_irq;


 ata_platform_remove_one(op);


 task_irq = bcom_get_task_irq(priv->dmatsk);
 irq_dispose_mapping(task_irq);
 bcom_ata_release(priv->dmatsk);
 irq_dispose_mapping(priv->ata_irq);

 return 0;
}
