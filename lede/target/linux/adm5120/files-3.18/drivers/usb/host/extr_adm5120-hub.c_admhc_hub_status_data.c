
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_hcd {int flags; } ;
struct admhcd {int num_ports; int lock; } ;


 int ADMHC_PS_CCS ;
 int ADMHC_PS_CSC ;
 int ADMHC_PS_OCIC ;
 int ADMHC_PS_PESC ;
 int ADMHC_PS_PRSC ;
 int ADMHC_PS_PSSC ;
 int ADMHC_RH_LPSC ;
 int ADMHC_RH_OCIC ;
 int HCD_FLAG_POLL_RH ;
 int HCD_HW_ACCESSIBLE (struct usb_hcd*) ;
 int admhc_read_portstatus (struct admhcd*,int) ;
 int admhc_read_rhdesc (struct admhcd*) ;
 scalar_t__ admhc_root_hub_state_changes (struct admhcd*,int,int) ;
 int clear_bit (int ,int *) ;
 struct admhcd* hcd_to_admhcd (struct usb_hcd*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
admhc_hub_status_data(struct usb_hcd *hcd, char *buf)
{
 struct admhcd *ahcd = hcd_to_admhcd(hcd);
 int i, changed = 0, length = 1;
 int any_connected = 0;
 unsigned long flags;
 u32 status;

 spin_lock_irqsave(&ahcd->lock, flags);
 if (!HCD_HW_ACCESSIBLE(hcd))
  goto done;


 status = admhc_read_rhdesc(ahcd);
 if (status & (ADMHC_RH_LPSC | ADMHC_RH_OCIC))
  buf[0] = changed = 1;
 else
  buf[0] = 0;
 if (ahcd->num_ports > 7) {
  buf[1] = 0;
  length++;
 }


 for (i = 0; i < ahcd->num_ports; i++) {
  status = admhc_read_portstatus(ahcd, i);


  any_connected |= (status & ADMHC_PS_CCS);

  if (status & (ADMHC_PS_CSC | ADMHC_PS_PESC | ADMHC_PS_PSSC
    | ADMHC_PS_OCIC | ADMHC_PS_PRSC)) {
   changed = 1;
   if (i < 7)
    buf[0] |= 1 << (i + 1);
   else
    buf[1] |= 1 << (i - 7);
  }
 }

 if (admhc_root_hub_state_changes(ahcd, changed,
   any_connected))
  set_bit(HCD_FLAG_POLL_RH, &hcd->flags);
 else
  clear_bit(HCD_FLAG_POLL_RH, &hcd->flags);

done:
 spin_unlock_irqrestore(&ahcd->lock, flags);

 return changed ? length : 0;
}
