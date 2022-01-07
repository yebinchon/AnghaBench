
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned int MX35_H1_IPPUE_DOWN_BIT ;
 unsigned int MX35_H1_IPPUE_UP_BIT ;
 unsigned int MX35_H1_OCPOL_BIT ;
 unsigned int MX35_H1_PM_BIT ;
 unsigned int MX35_H1_PP_BIT ;
 unsigned int MX35_H1_SIC_MASK ;
 unsigned int MX35_H1_SIC_SHIFT ;
 unsigned int MX35_H1_TLL_BIT ;
 unsigned int MX35_H1_USBTE_BIT ;
 int MX35_IO_ADDRESS (scalar_t__) ;
 unsigned int MX35_OTG_OCPOL_BIT ;
 unsigned int MX35_OTG_PM_BIT ;
 unsigned int MX35_OTG_PP_BIT ;
 unsigned int MX35_OTG_SIC_MASK ;
 unsigned int MX35_OTG_SIC_SHIFT ;
 scalar_t__ MX35_USB_BASE_ADDR ;
 unsigned int MXC_EHCI_INTERFACE_MASK ;
 unsigned int MXC_EHCI_INTERNAL_PHY ;
 unsigned int MXC_EHCI_IPPUE_DOWN ;
 unsigned int MXC_EHCI_IPPUE_UP ;
 unsigned int MXC_EHCI_OC_PIN_ACTIVE_LOW ;
 unsigned int MXC_EHCI_POWER_PINS_ENABLED ;
 unsigned int MXC_EHCI_PWR_PIN_ACTIVE_HIGH ;
 unsigned int MXC_EHCI_TTL_ENABLED ;
 scalar_t__ USBCTRL_OTGBASE_OFFSET ;
 unsigned int readl (int ) ;
 int writel (unsigned int,int ) ;

int mx35_initialize_usb_hw(int port, unsigned int flags)
{
 unsigned int v;

 v = readl(MX35_IO_ADDRESS(MX35_USB_BASE_ADDR + USBCTRL_OTGBASE_OFFSET));

 switch (port) {
 case 0:
  v &= ~(MX35_OTG_SIC_MASK | MX35_OTG_PM_BIT | MX35_OTG_PP_BIT |
   MX35_OTG_OCPOL_BIT);
  v |= (flags & MXC_EHCI_INTERFACE_MASK) << MX35_OTG_SIC_SHIFT;

  if (!(flags & MXC_EHCI_POWER_PINS_ENABLED))
   v |= MX35_OTG_PM_BIT;

  if (flags & MXC_EHCI_PWR_PIN_ACTIVE_HIGH)
   v |= MX35_OTG_PP_BIT;

  if (!(flags & MXC_EHCI_OC_PIN_ACTIVE_LOW))
   v |= MX35_OTG_OCPOL_BIT;

  break;
 case 1:
  v &= ~(MX35_H1_SIC_MASK | MX35_H1_PM_BIT | MX35_H1_PP_BIT |
   MX35_H1_OCPOL_BIT | MX35_H1_TLL_BIT | MX35_H1_USBTE_BIT |
   MX35_H1_IPPUE_DOWN_BIT | MX35_H1_IPPUE_UP_BIT);
  v |= (flags & MXC_EHCI_INTERFACE_MASK) << MX35_H1_SIC_SHIFT;

  if (!(flags & MXC_EHCI_POWER_PINS_ENABLED))
   v |= MX35_H1_PM_BIT;

  if (flags & MXC_EHCI_PWR_PIN_ACTIVE_HIGH)
   v |= MX35_H1_PP_BIT;

  if (!(flags & MXC_EHCI_OC_PIN_ACTIVE_LOW))
   v |= MX35_H1_OCPOL_BIT;

  if (!(flags & MXC_EHCI_TTL_ENABLED))
   v |= MX35_H1_TLL_BIT;

  if (flags & MXC_EHCI_INTERNAL_PHY)
   v |= MX35_H1_USBTE_BIT;

  if (flags & MXC_EHCI_IPPUE_DOWN)
   v |= MX35_H1_IPPUE_DOWN_BIT;

  if (flags & MXC_EHCI_IPPUE_UP)
   v |= MX35_H1_IPPUE_UP_BIT;

  break;
 default:
  return -EINVAL;
 }

 writel(v, MX35_IO_ADDRESS(MX35_USB_BASE_ADDR + USBCTRL_OTGBASE_OFFSET));

 return 0;
}
