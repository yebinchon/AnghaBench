
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dev; } ;
struct axon_msic {int dcr_host; int irq_domain; } ;


 int MSIC_CTRL_ENABLE ;
 int MSIC_CTRL_IRQ_ENABLE ;
 int MSIC_CTRL_REG ;
 int dcr_read (int ,int ) ;
 struct axon_msic* dev_get_drvdata (int *) ;
 int irq_domain_get_of_node (int ) ;
 int msic_dcr_write (struct axon_msic*,int ,int) ;
 int pr_devel (char*,int ) ;

__attribute__((used)) static void axon_msi_shutdown(struct platform_device *device)
{
 struct axon_msic *msic = dev_get_drvdata(&device->dev);
 u32 tmp;

 pr_devel("axon_msi: disabling %pOF\n",
   irq_domain_get_of_node(msic->irq_domain));
 tmp = dcr_read(msic->dcr_host, MSIC_CTRL_REG);
 tmp &= ~MSIC_CTRL_ENABLE & ~MSIC_CTRL_IRQ_ENABLE;
 msic_dcr_write(msic, MSIC_CTRL_REG, tmp);
}
