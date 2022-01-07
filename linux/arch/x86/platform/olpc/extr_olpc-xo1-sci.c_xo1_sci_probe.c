
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ start; } ;
struct platform_device {int dev; } ;


 int CS5536_GPIOM6_PME_EN ;
 int CS5536_GPIOM7_PME_EN ;
 scalar_t__ CS5536_PM_GPE0_EN ;
 scalar_t__ CS5536_PM_GPE0_STS ;
 int EC_SCI_SRC_ALL ;
 int EIO ;
 int ENODEV ;
 int IORESOURCE_IO ;
 scalar_t__ acpi_base ;
 int detect_lid_state () ;
 int dev_err (int *,char*) ;
 int free_ebook_switch () ;
 int free_ec_sci () ;
 int free_lid_events () ;
 int free_lid_switch () ;
 int free_power_button () ;
 int machine_is_olpc () ;
 int mfd_cell_enable (struct platform_device*) ;
 int olpc_ec_mask_write (int ) ;
 int outl (int,scalar_t__) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int process_sci_queue (int) ;
 int send_ebook_state () ;
 int send_lid_state () ;
 int setup_ebook_switch (struct platform_device*) ;
 int setup_ec_sci () ;
 int setup_lid_events () ;
 int setup_lid_switch (struct platform_device*) ;
 int setup_power_button (struct platform_device*) ;
 int setup_sci_interrupt (struct platform_device*) ;

__attribute__((used)) static int xo1_sci_probe(struct platform_device *pdev)
{
 struct resource *res;
 int r;


 if (!machine_is_olpc())
  return -ENODEV;

 r = mfd_cell_enable(pdev);
 if (r)
  return r;

 res = platform_get_resource(pdev, IORESOURCE_IO, 0);
 if (!res) {
  dev_err(&pdev->dev, "can't fetch device resource info\n");
  return -EIO;
 }
 acpi_base = res->start;

 r = setup_power_button(pdev);
 if (r)
  return r;

 r = setup_ebook_switch(pdev);
 if (r)
  goto err_ebook;

 r = setup_lid_switch(pdev);
 if (r)
  goto err_lid;

 r = setup_lid_events();
 if (r)
  goto err_lidevt;

 r = setup_ec_sci();
 if (r)
  goto err_ecsci;


 outl(CS5536_GPIOM6_PME_EN | CS5536_GPIOM7_PME_EN,
  acpi_base + CS5536_PM_GPE0_EN);


 outl(0xffffffff, acpi_base + CS5536_PM_GPE0_STS);
 process_sci_queue(0);


 send_ebook_state();
 detect_lid_state();
 send_lid_state();

 r = setup_sci_interrupt(pdev);
 if (r)
  goto err_sci;


 olpc_ec_mask_write(EC_SCI_SRC_ALL);

 return r;

err_sci:
 free_ec_sci();
err_ecsci:
 free_lid_events();
err_lidevt:
 free_lid_switch();
err_lid:
 free_ebook_switch();
err_ebook:
 free_power_button();
 return r;
}
