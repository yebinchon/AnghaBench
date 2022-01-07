
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dev; } ;


 int CS5536_PIC_INT_SEL1 ;
 int CS5536_PIC_INT_SEL2 ;
 scalar_t__ CS5536_PM1_STS ;
 int CS5536_PM_PWRBTN ;
 int CS5536_PM_RTC ;
 int DRV_NAME ;
 scalar_t__ acpi_base ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,...) ;
 int inb (int ) ;
 int inl (scalar_t__) ;
 int outb (int,int ) ;
 int outl (int,scalar_t__) ;
 int rdmsr (int,int,int) ;
 int request_irq (int,int ,int ,int ,struct platform_device*) ;
 int sci_irq ;
 int wrmsrl (int,int) ;
 int xo1_sci_intr ;

__attribute__((used)) static int setup_sci_interrupt(struct platform_device *pdev)
{
 u32 lo, hi;
 u32 sts;
 int r;

 rdmsr(0x51400020, lo, hi);
 sci_irq = (lo >> 20) & 15;

 if (sci_irq) {
  dev_info(&pdev->dev, "SCI is mapped to IRQ %d\n", sci_irq);
 } else {

  dev_info(&pdev->dev, "SCI unmapped. Mapping to IRQ 3\n");
  sci_irq = 3;
  lo |= 0x00300000;
  wrmsrl(0x51400020, lo);
 }


 if (sci_irq < 8) {
  lo = inb(CS5536_PIC_INT_SEL1);
  lo |= 1 << sci_irq;
  outb(lo, CS5536_PIC_INT_SEL1);
 } else {
  lo = inb(CS5536_PIC_INT_SEL2);
  lo |= 1 << (sci_irq - 8);
  outb(lo, CS5536_PIC_INT_SEL2);
 }


 sts = inl(acpi_base + CS5536_PM1_STS);
 outl(((CS5536_PM_PWRBTN | CS5536_PM_RTC) << 16) | 0xffff,
      acpi_base + CS5536_PM1_STS);

 r = request_irq(sci_irq, xo1_sci_intr, 0, DRV_NAME, pdev);
 if (r)
  dev_err(&pdev->dev, "can't request interrupt\n");

 return r;
}
