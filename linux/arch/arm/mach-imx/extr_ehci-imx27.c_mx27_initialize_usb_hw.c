
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned int MX27_H1_DT_BIT ;
 unsigned int MX27_H1_PM_BIT ;
 unsigned int MX27_H1_SIC_MASK ;
 unsigned int MX27_H1_SIC_SHIFT ;
 unsigned int MX27_H2_DT_BIT ;
 unsigned int MX27_H2_PM_BIT ;
 unsigned int MX27_H2_SIC_MASK ;
 unsigned int MX27_H2_SIC_SHIFT ;
 int MX27_IO_ADDRESS (scalar_t__) ;
 unsigned int MX27_OTG_PM_BIT ;
 unsigned int MX27_OTG_SIC_MASK ;
 unsigned int MX27_OTG_SIC_SHIFT ;
 scalar_t__ MX27_USB_BASE_ADDR ;
 unsigned int MXC_EHCI_INTERFACE_MASK ;
 unsigned int MXC_EHCI_POWER_PINS_ENABLED ;
 unsigned int MXC_EHCI_TTL_ENABLED ;
 scalar_t__ USBCTRL_OTGBASE_OFFSET ;
 unsigned int readl (int ) ;
 int writel (unsigned int,int ) ;

int mx27_initialize_usb_hw(int port, unsigned int flags)
{
 unsigned int v;

 v = readl(MX27_IO_ADDRESS(MX27_USB_BASE_ADDR + USBCTRL_OTGBASE_OFFSET));

 switch (port) {
 case 0:
  v &= ~(MX27_OTG_SIC_MASK | MX27_OTG_PM_BIT);
  v |= (flags & MXC_EHCI_INTERFACE_MASK) << MX27_OTG_SIC_SHIFT;

  if (!(flags & MXC_EHCI_POWER_PINS_ENABLED))
   v |= MX27_OTG_PM_BIT;
  break;
 case 1:
  v &= ~(MX27_H1_SIC_MASK | MX27_H1_PM_BIT | MX27_H1_DT_BIT);
  v |= (flags & MXC_EHCI_INTERFACE_MASK) << MX27_H1_SIC_SHIFT;

  if (!(flags & MXC_EHCI_POWER_PINS_ENABLED))
   v |= MX27_H1_PM_BIT;

  if (!(flags & MXC_EHCI_TTL_ENABLED))
   v |= MX27_H1_DT_BIT;

  break;
 case 2:
  v &= ~(MX27_H2_SIC_MASK | MX27_H2_PM_BIT | MX27_H2_DT_BIT);
  v |= (flags & MXC_EHCI_INTERFACE_MASK) << MX27_H2_SIC_SHIFT;

  if (!(flags & MXC_EHCI_POWER_PINS_ENABLED))
   v |= MX27_H2_PM_BIT;

  if (!(flags & MXC_EHCI_TTL_ENABLED))
   v |= MX27_H2_DT_BIT;

  break;
 default:
  return -EINVAL;
 }

 writel(v, MX27_IO_ADDRESS(MX27_USB_BASE_ADDR + USBCTRL_OTGBASE_OFFSET));

 return 0;
}
