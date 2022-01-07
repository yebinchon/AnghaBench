
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_6__ {int b_hnp_enable; int otg_port; } ;
struct usb_hcd {TYPE_3__ self; } ;
struct admhcd {int num_ports; TYPE_2__* regs; } ;
struct TYPE_4__ {int status; } ;
struct TYPE_5__ {TYPE_1__ roothub; } ;


 int ADMHC_PS_CPP ;
 int ADMHC_PS_CPS ;
 int ADMHC_PS_CSC ;
 int ADMHC_PS_OCIC ;
 int ADMHC_PS_PESC ;
 int ADMHC_PS_PRSC ;
 int ADMHC_PS_PSSC ;
 int ADMHC_PS_SPP ;
 int ADMHC_PS_SPS ;
 int ADMHC_RH_OCIC ;




 int EPIPE ;
 int ESHUTDOWN ;



 int HCD_HW_ACCESSIBLE (struct usb_hcd*) ;
 int admhc_get_hub_descriptor (struct admhcd*,char*) ;
 int admhc_get_hub_status (struct admhcd*,char*) ;
 int admhc_get_port_status (struct admhcd*,int,char*) ;
 int admhc_port_disable (struct admhcd*,int) ;
 int admhc_port_enable (struct admhcd*,int) ;
 int admhc_port_reset (struct admhcd*,int) ;
 int admhc_port_write (struct admhcd*,int,int ) ;
 int admhc_writel (struct admhcd*,int ,int *) ;
 struct admhcd* hcd_to_admhcd (struct usb_hcd*) ;
 int start_hnp (struct admhcd*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int admhc_hub_control(struct usb_hcd *hcd, u16 typeReq, u16 wValue,
  u16 wIndex, char *buf, u16 wLength)
{
 struct admhcd *ahcd = hcd_to_admhcd(hcd);
 int ports = ahcd->num_ports;
 int ret = 0;

 if (unlikely(!HCD_HW_ACCESSIBLE(hcd)))
  return -ESHUTDOWN;

 switch (typeReq) {
 case 143:
  switch (wValue) {
  case 144:




  case 145:
   break;
  default:
   goto error;
  }
  break;
 case 142:
  if (!wIndex || wIndex > ports)
   goto error;
  wIndex--;

  switch (wValue) {
  case 131:
   ret = admhc_port_disable(ahcd, wIndex);
   break;
  case 128:
   ret = admhc_port_write(ahcd, wIndex, ADMHC_PS_CPS);
   break;
  case 130:
   ret = admhc_port_write(ahcd, wIndex, ADMHC_PS_CPP);
   break;
  case 136:
   ret = admhc_port_write(ahcd, wIndex, ADMHC_PS_CSC);
   break;
  case 135:
   ret = admhc_port_write(ahcd, wIndex, ADMHC_PS_PESC);
   break;
  case 132:
   ret = admhc_port_write(ahcd, wIndex, ADMHC_PS_PSSC);
   break;
  case 134:
   ret = admhc_port_write(ahcd, wIndex, ADMHC_PS_OCIC);
   break;
  case 133:
   ret = admhc_port_write(ahcd, wIndex, ADMHC_PS_PRSC);
   break;
  default:
   goto error;
  }
  break;
 case 141:
  ret = admhc_get_hub_descriptor(ahcd, buf);
  break;
 case 140:
  ret = admhc_get_hub_status(ahcd, buf);
  break;
 case 139:
  if (!wIndex || wIndex > ports)
   goto error;
  wIndex--;

  ret = admhc_get_port_status(ahcd, wIndex, buf);
  break;
 case 138:
  switch (wValue) {
  case 144:

  case 145:
   break;
  default:
   goto error;
  }
  break;
 case 137:
  if (!wIndex || wIndex > ports)
   goto error;
  wIndex--;

  switch (wValue) {
  case 131:
   ret = admhc_port_enable(ahcd, wIndex);
   break;
  case 129:
   ret = admhc_port_reset(ahcd, wIndex);
   break;
  case 128:






   ret = admhc_port_write(ahcd, wIndex, ADMHC_PS_SPS);
   break;
  case 130:
   ret = admhc_port_write(ahcd, wIndex, ADMHC_PS_SPP);
   break;
  default:
   goto error;
  }
  break;

 default:
error:

  ret = -EPIPE;
 }

 return ret;
}
