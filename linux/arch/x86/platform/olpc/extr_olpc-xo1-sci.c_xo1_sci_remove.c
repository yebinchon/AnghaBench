
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 scalar_t__ acpi_base ;
 int cancel_work_sync (int *) ;
 int free_ebook_switch () ;
 int free_ec_sci () ;
 int free_irq (int ,struct platform_device*) ;
 int free_lid_events () ;
 int free_lid_switch () ;
 int free_power_button () ;
 int mfd_cell_disable (struct platform_device*) ;
 int sci_irq ;
 int sci_work ;

__attribute__((used)) static int xo1_sci_remove(struct platform_device *pdev)
{
 mfd_cell_disable(pdev);
 free_irq(sci_irq, pdev);
 cancel_work_sync(&sci_work);
 free_ec_sci();
 free_lid_events();
 free_lid_switch();
 free_ebook_switch();
 free_power_button();
 acpi_base = 0;
 return 0;
}
