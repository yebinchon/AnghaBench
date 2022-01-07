
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ehci_hcor {int dummy; } ;
struct ehci_hccr {int cr_capbase; } ;
typedef enum usb_init_type { ____Placeholder_usb_init_type } usb_init_type ;


 scalar_t__ HC_LENGTH (int ) ;
 scalar_t__ USB_HOST_BASE ;
 int ehci_readl (int *) ;
 struct ehci_hcor* ghcor ;
 int start_oxnas_usb_ehci () ;

int ehci_hcd_init(int index, enum usb_init_type init, struct ehci_hccr **hccr,
    struct ehci_hcor **hcor)
{
 start_oxnas_usb_ehci();
 *hccr = (struct ehci_hccr *)(USB_HOST_BASE + 0x100);
 *hcor = (struct ehci_hcor *)((uint32_t)*hccr +
   HC_LENGTH(ehci_readl(&(*hccr)->cr_capbase)));
 ghcor = *hcor;
 return 0;
}
