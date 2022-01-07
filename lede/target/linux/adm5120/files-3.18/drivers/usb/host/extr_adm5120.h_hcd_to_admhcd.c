
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {scalar_t__ hcd_priv; } ;
struct admhcd {int dummy; } ;



__attribute__((used)) static inline struct admhcd *hcd_to_admhcd(struct usb_hcd *hcd)
{
 return (struct admhcd *)(hcd->hcd_priv);
}
